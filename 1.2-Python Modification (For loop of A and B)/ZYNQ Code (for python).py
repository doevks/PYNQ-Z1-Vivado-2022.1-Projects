from pynq import Overlay
ol = Overlay("Logic_Gate_HW1.bit")
inp = ol.axi_gpio_input.channel1
out = ol.axi_gpio_output.channel1
inp.setdirection("out")
out.setdirection("in")

inp.setlength(2) #2 bits
out.setlength(4) #4 bits

inp.write(0b01, 0b11) #A=1 B=0 (because 0b 0=b 1=a)
# std_logic is a single bit type, thus a and b are just one wire. Meaning they can be either 0 or 1.
# channel1.write(value, mask)
# value = 0b01 → the actual data being written
# mask = 0b11 → which bits are allowed to change (both bits, in this case, since it's 11)

result = out.read() & 0xF
print(f"NAND/NOR/XNOR/NOT_A = {result:04b}") 
