#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/objdetect.hpp>
#include <wiringPi.h>
#include <chrono>
#include <mqtt/async_client.h>

using namespace std;
using namespace chrono;
using namespace mqtt;
using namespace cv;

const string FACE_CASCADE_XML = "/home/pi/opencv/data/haarcascades/haarcascade_frontalface_default.xml";
const int LED_RED = 0; // GPIO 17
const int LED_GREEN = 1; // GPIO 18
const string MQTT_SERVER = "tcp://localhost:1883";
const string MQTT_TOPIC = "Face_Detec";
//MQTT Channel: mosquitto_sub -h localhost -p 1883 -t "Face_Detec"


void setLED(){
	wiringPiSetup();
	if(wiringPiSetup() == -1){cout<<"Cannot Initialized wiringPi Library"<<endl;}
	pinMode(LED_GREEN,PWM_OUTPUT);
	pinMode(LED_RED,OUTPUT);
	pwmSetMode(PWM_MODE_MS);
	pwmSetClock(384);
	
}

void turn_on_green_led(){
	digitalWrite(LED_RED,LOW);
	for(int i = 0; i < 5; i++){
		pwmWrite(LED_GREEN,500);
		delay(100);
		pwmWrite(LED_GREEN,0);
		delay(100);
	}
}

void turn_on_red_led(){
	digitalWrite(LED_RED,HIGH);
}

int main(){
	//Initial LED Status
	setLED();
	turn_on_red_led();
	
	
	//Settup MQTT Connection
	async_client mqtt_client(MQTT_SERVER, "");
	connect_options copts;
	copts.set_keep_alive_interval(20);
	copts.set_clean_session(true);
	
	try{
		mqtt_client.connect(copts)->wait();
		cout<<"CONNECTED"<<endl;
		
	}catch (const mqtt::exception& e){
		cerr << "Error connecting to MQTT server: " << e.what() << endl;
        return 1;
	}
	
	//Load Face Classification
	CascadeClassifier face_cascade;
	if(!face_cascade.load(FACE_CASCADE_XML)){cerr<<"CANNOT LOAD XML"<<endl; return 1;}
	
	//Open Camera
	VideoCapture Vicap(0);
	if(!Vicap.isOpened()){cerr<<"ERROR IN OPEN VIDEO CAPTURE"<<endl; return 1;}
	
	int photo_counter = 0;
    string photo_folder = "/home/pi/Desktop/Final-Project/faces/";
    auto last_face_detection_time = steady_clock::now();

	
	while(true){
		Mat frame;
		Vicap >>frame;
		imshow("Camera", frame);

		if(frame.empty()){cerr<<"ERROR IN LOADING VIDEO FRAME"<<endl; break;}
		
		auto current_time = steady_clock::now();
		auto elapsed_time = duration_cast<seconds>(current_time - last_face_detection_time).count();
		
		// Identify human face ever 2-second.
		if(elapsed_time >= 2){
			//set gray_frame
			Mat gray;
			cvtColor(frame, gray, COLOR_BGR2GRAY);
			equalizeHist(gray,gray);
		
			vector<Rect> faces;
			face_cascade.detectMultiScale(gray,faces);
		
			// Adding rectangle for photo
			for(const auto& face:faces){
				rectangle(frame,face,Scalar(255,0,0),2);
			}	
		
			if(faces.size()){
				//take photo
				stringstream photo_filename;
				photo_filename << photo_folder << "photo_" << ++photo_counter<<".jpg";
				cv::imwrite(photo_filename.str(), frame);
				cout << "Photo Take: " << photo_filename.str() <<endl;
			
				string payload = "Someone show in camera!";
				mqtt_client.publish(MQTT_TOPIC, payload, 1,false) ->wait_for(ETIMEDOUT);
				turn_on_green_led();
			}else{
				turn_on_red_led();
			}
			//update time
			last_face_detection_time = current_time;
		}

		
		
		if(waitKey(30) == 27){

			cout <<"Close Camera Windows"<<endl;
			break;
		}		
	}
	
	Vicap.release();
	mqtt_client.disconnect()->wait();
	cout<<"All Set!"<<endl;
	
	return 0;
}
