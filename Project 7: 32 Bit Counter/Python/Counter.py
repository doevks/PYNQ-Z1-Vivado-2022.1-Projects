from pynq import Overlay 
import time #used for time.sleep(...)
ol = Overlay("Counter.bit")
c = ol.counter.channel1; ct = ol.counter_total.channel1 #c is control
c.setdirection("out"); ct.setdirection("in")
c.setlenght(2); ct.setlenght(32)

c.write(0b10, 0b11); c.write(0, 0b11)   # reset pulse
c.write(0b01, 0b11)                     # increment moduna geç

for i in range(5):
    time.sleep(0.05)
    print("increment:", ct.read())

c.write(0b11, 0b11)                     # decrement moduna geç

for n in range(5):
    time.sleep(0.05)
    print("decrement:", ct.read())

c.write(0, 0b11)                        # hold ile durdur
