from random import randint
from intelhex import IntelHex

ih = IntelHex()

for i in range(0x10000):
    if i%2 == 1:
        ih[i] = 0x1C
    else:
        ih[i] = 0x41

display_adr = 0x8000
tot_ascii_pxl = 80 * 30 * 2
display_adr_end = tot_ascii_pxl + display_adr

# for i in range(display_adr, display_adr_end, 2):
#     print(hex(i))
#     if i == 0x8000:
#         ih[i] = 0x42
#         ih[i + 1] = 0x20
#     else:
#         ih[i] = 0x4A
#         ih[i + 1] = 0x03

ascii = 0xFF
for i in range (0, 30):
    for j in range (0, 80):
        color = 0x00
        if j < 64:
            adr = (j + i*64) * 2 + display_adr
            if i == 0 or i == 29 or j == 0 or j == 63:
                color = 0xB6
        else:
            adr = (j - 64 + i*16) * 2 + display_adr + 3840
            if i == 0 or i == 29 or j == 64 or j == 79:
                color = 0xDF

        ih[adr] = ascii
        ih[adr + 1] = color



ih.write_hex_file("memory.hex")
