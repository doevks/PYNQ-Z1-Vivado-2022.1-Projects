from pynq import Overlay
ol = Overlay("Full_adder.bit")

i = ol.fa_input.channel1
o = ol.fa_output.channel1
i.setdirection("out"); i.setlength(3) #PS'den çıkış → GPIO'dan RTL'e giriş
o.setdirection("in"); o.setlength(2) #RTL'den çıkış → PS'e giriş

for cin in (0, 1):
        for b in (0, 1):
                for a in (0, 1):
                value = a | (b << 1) | (cin << 2) #Burada a 1. bit, b 1 sola kaymış 2. bit, c 2 sola kaymış, 3. bit olması amacıyla koyulur.
                # (xxx) --> (Cin b a)
                i.write(value, 0x7) # 3 bit değeri value(üstteki) olarak yazılır, yanında ise masking olarak 3'üne de uygulanır.
                y = o.read() & 0x3 # sonucu okuyor, 2 bit maskeliyor (sum + cout).
                print(a, b, cin, "sum=", y & 1, "cout=", (y >> 1) & 1) # sum biti (bit0), (y >> 1) & 1 → cout biti (bit1)
