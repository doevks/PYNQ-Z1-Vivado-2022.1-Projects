from pynq import Overlay
ol = Overlay("two_bit_adder.bit")   

a = ol.axi_gpio_input_a.channel1 ; b = ol.axi_gpio_input_b.channel1 ; o = ol.axi_gpio_output_data.channel1
a.setdirection("out"); a.setlength(2) ; b.setdirection("out"); b.setlength(2) ; o.setdirection("in"); o.setlength(3)

for i in range(4):
    for n in range(4):
        a.write(i, 0x3)
        b.write(n, 0x3)
        out = o.read() & 0x7
        print(f"{i} + {n} gives {out}") #a and b are the GPIO channel objects

