
import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)

pin_out = 2
GPIO.setup(pin_out, GPIO.OUT)

for i in range(7):
    GPIO.output(pin_out, GPIO.HIGH)
    time.sleep(1)
    GPIO.output(pin_out, GPIO.LOW)
    time.sleep(1)

GPIO.cleanup()
