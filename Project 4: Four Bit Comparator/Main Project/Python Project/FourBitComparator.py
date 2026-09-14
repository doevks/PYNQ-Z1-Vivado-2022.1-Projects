from pynq import Overlay
ol=Overlay("FourBitComparator_Overlay.bit");
a=ol.input_a_data.channel1; b=ol.input_b_data.channel1; r=ol.result_data.channel1
a.setdirection("out"); b.setdirection("out"); r.setdirection("in")
a.setlength(4); b.setlength(4); r.setlength(3)

def compare(av,bv):
    a.write(av,0xF); b.write(bv,0xF)
    y=r.read() & 7
    return ["A<B","A=B","A>B"][[1,2,4].index(y)]

print(compare(5,9)) 
