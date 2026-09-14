from pynq import Overlay
ol = Overlay("Decoder.bit")
a = ol.adress.channel1; e = ol.enable_bit.channel1; r = ol.outputs.channel1
a.setdirection("out"); e.setdirection("out"); r.setdirection("in")
a.setlength(3); e.setlength(1); r.setlength(8)

e.write(1, 0x1)

for address in range(8):
    a.write(address, 0x7)
    result = r.read() & 0xFF
    print(f"address={address:03b}, output={result:08b}")
