import time
import os
seconds = time.time()

os.system("python3 main.py --cpu --config example_config/rcv1/kim_cnn.yml")

print("Time(in seconds) = ",time.time() - seconds)