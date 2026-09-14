from pynq import Overlay
ol=Overlay("MUX.bit")
a=ol.mux_data.channel1; s=ol.mux_select.channel1; r=ol.mux_return.channel1
a.setdirection("out"); s.setdirection("out"); r.setdirection("in")
a.setlength(4); s.setlength(2); r.setlength(1) #length!

a.write(0b1010, 0b1111) #value, mask

for sel in range(4):
	s.write(sel, 0b11);
	print(f"Selector = {sel}, output = {r.read() & 1}")
	
