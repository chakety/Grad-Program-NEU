Consider an IoT scenario with three sensors: (1) temperature (0C through 45C), (2) light
intensity (0% through 100%) and (3) humidity (0% through 100%). From experience it can
be seen that if the light intensity is above 70% whenever temperature is above 25C OR
humidity is above 65% the air conditioner (AC) is ON (otherwise the AC is OFF). Using
TensorFlow, build a database with 100000 samples (randomly selected to comply with the
observation above).


Use the database to model the scenario using an artificial neural network (ANN) with a hid-
den layer and a single output that can be used to drive the AC. Decide the best performance
based on the number of hidden nodes and maximum number of iterations.
