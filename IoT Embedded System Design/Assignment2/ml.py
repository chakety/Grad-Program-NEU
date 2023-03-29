#!/usr/bin/python3
import numpy as np
import tensorflow as tf

from random import random

from tensorflow.keras import layers
from tensorflow.keras import models
tf.enable_eager_execution()
N = 100000

training_input = np.zeros(shape=(N,3))
training_output = np.zeros(shape=(N,1))

for i in range(N):
    temp = random()*300
    light = random()*300
    humidity = random()*300
    
    training_input[i] = [temp, light, humidity]

    if (temp < 25 and light < 70) or humidity < 65:
        training_output[i] = 0
    else:
        training_output[i] = 1

model = models.Sequential();
model.add(layers.Dense(24, input_shape=(3,), activation='relu'))
model.add(layers.Dense(1))

model.summary()

model.compile(loss='mean_squared_error', optimizer='adam', metrics=['accuracy'])

model.fit(training_input, training_output, epochs=3)

O = 10

testing_input = np.zeros(shape=(O,3))

for i in range(O):
    temp = random()*100
    light = random()*100
    humidity = random()*100
    testing_input[i] = [temp, light, humidity]

testing_output = (abs(model.predict(testing_input)).round())

for i in range(O):
    print("Temp: " + f"{testing_input[i][0]:.2f}".rjust(6) + ", light: " + f"{testing_input[i][1]:.2f}".rjust(5) + ", humifity: "+ f"{testing_input[i][2]:.2f}".rjust(4) +", AC: " + str(testing_output[i][0]))

line = "\n#define MAX_WEIGHT " + str(model.layers[0].weights[0].shape[1]) + "\n"

line += "\ndouble w11[MAX_WEIGHT] = { "

for i in range(model.layers[0].weights[0].shape[1]):
    if i > 0:
        line += ","
    line += str(model.layers[0].weights[0][0][i].numpy())

line += " };\n"

line += "\ndouble w12[MAX_WEIGHT] = { "

for i in range(model.layers[0].weights[0].shape[1]):
    if i > 0:
        line += ","
    line += str(model.layers[0].weights[0][1][i].numpy())

line += " };\n"

line += "\ndouble w13[MAX_WEIGHT] = { "

for i in range(model.layers[0].weights[0].shape[1]):
    if i > 0:
        line += ","
    line += str(model.layers[0].weights[0][2][i].numpy())

line += " };\n"

line += "\ndouble b1[MAX_WEIGHT] = { "

for i in range(model.layers[0].weights[1].shape[0]):
    if i > 0:
        line += ","
    line += str(model.layers[0].weights[1][i].numpy())

line += " };\n"

line += "\ndouble w2[MAX_WEIGHT] = { "

for i in range(model.layers[1].weights[0].shape[0]):
    if i > 0:
        line += ","
    line += str(model.layers[1].weights[0][i][0].numpy())

line += " };\n"

line += "\ndouble b2 = " + str(model.layers[1].weights[1][0].numpy()) + ";"

print(line)
