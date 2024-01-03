# Lab Module 12 - Semester Project - Final Write-up

NOTE: Be sure to implement all the Lab Module 12 requirements listed at [Lab Module 12](https://github.com/orgs/programming-the-iot/projects/1#column-10488565).


## Description

This project will mainly focus on connecting the CDA, GDA, and cloud with the TLS MQTT connection. The CDA part will use TLS MQTT to send CPU and memory performance data into GDA and collect emulator temperature, humidity, and pressure data to GDA. By changing the sensor value in the Sense of HAT, the CDA will receive commands from either the internal or GDA. Eventually, all the data in both GDA and CDA will be uploaded to the cloud, specifically, the Ubidots, which will trigger events by sending SMS messages. 



## What - The Problem 
The ultimate problem that is waiting to be solved is building up personal smart home devices, but this project only brings the concept and basic implementation of connecting devices with sensors and the cloud: how the sensors collect data, how to transmit collected data, and how to trigger abnormal data which personally want to adjust.



## Why - Who Cares? 
People who are working on IoT systems and connectivity or interested in smart home devices should care about this project. Meanwhile, we are in the era of the Internet, and using advanced technologies can help us save time to focus on what we really want to do personally.  Imagine when we are outside during winter, and the room is already at the proper temperature. Isn't this wonderful?



## How - Expected Technical Approach

As this project approaches an end, it will collect sensor data, including the temperature, humidity, and pressure from the emulator. The CDA will make internal decisions about the temperature change. All the data will be sent to Gateway with a secured MQTT connection. The Gateway will make the decision to turn on or off within the humanity data change. The other function of Gateway is to connect to the Cloud to send those data and its own system performance data.

The cloud will make the final decision for the LED light switch on/off by using the command send in Gateway, displaying all the data it collects, and sending an SMS message for temperature change.


### System Diagram


![dia drawio](https://github.com/Wenycy/piot-java-components/assets/124407835/16986262-ecc4-401d-93b3-db1988620243)

The entire system contains three parts: the CDA which collects data, the CGA which handles data transition and little decision making, and the cloud which has all the data and makes further decision. From the above diagram, it is obvious that the CDA will collect all the sensor data and, using MQTT, send it to the GDA; the GDA will analyze the humidity to decide whether it is time to turn ON/OFF and send its decision with MQTT back to CDA. It also sends all the data, including its own system performance data, to the Cloud with MQTT and stores them in the local system. Once the cloud receives the data, it stores and displays them. This is also the time for the cloud to decide whether to have the LED  turn on/off within the pressure data change and send SMS messages about temperature change when necessary. 





### What THREE (3) sensors and ONE (1) actuator did you use (add more if you wish)?

- CDA Sensor 1: Temperature

- CDA Sensor 2: Humidity

- CDA Sensor 3: Pressure

- CDA Actuator 1: SenseHAT

- CDA Actuator 2: personal laptop



### What ONE (1) CDA protocol and TWO (2) GDA protocols did you implement (add more if you wish)?

- CDA to GDA Protocol: MQTT TLS

- GDA to CDA Protocol: MQTT TLS

- GDA to Cloud Protocol: MQTT TLS

- Cloud to GDA Protocol: MQTT TLS


 
### What TWO (2) cloud services / capabilities did you use (add more if you wish)?

- Cloud Service 1 (data ingress - all inputs): Ubidots

- Cloud Service 2 (data egress - all actuation events): Ubidots



## Screen Shots Representing Cloud Services
![Ubidots](https://github.com/Wenycy/piot-java-components/assets/124407835/87077c11-b873-4a38-87a4-c0842ce56b11)



### Screen Shots Representing Visualized Data
![v1](https://github.com/Wenycy/piot-java-components/assets/124407835/17a770f8-4766-423b-861e-81ee1167f87c)


![v2](https://github.com/Wenycy/piot-java-components/assets/124407835/f3903835-aef8-4768-950e-b4de21a26428)



EOF.