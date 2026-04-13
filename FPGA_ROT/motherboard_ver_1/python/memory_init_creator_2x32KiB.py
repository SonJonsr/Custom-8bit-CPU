from random import randint
from intelhex import IntelHex

ih_odd = IntelHex()
ih_even = IntelHex()

# Fyll hele 64KiB med 0x00 (eller 0xFF)
for i in range(32768):
    ih_even[i] = 0x4A
    ih_odd[i] = int(i / 128)

display_adr = 0x4000

pxl_x = 640
pxl_y = 480

ascii_pxl_x = pxl_x / 8
ascii_pxl_y = pxl_y / 16

tot_ascii_pxl = 80 * 30
display_adr_end = tot_ascii_pxl + display_adr

for i in range(display_adr, display_adr_end):
    print(i)
    ih_even[i] = 0x4A
    ih_odd[i] = randint(0, 255)
# Sett dine spesifikke verdier her
# ih_odd[0x0000] = 0xAF  # Eksempel: Instruksjon 1
# ih_even[0x0001] = 0x01  # Eksempel: Data 1
# ... osv

ih_odd.write_hex_file("memory_odd.hex")
ih_even.write_hex_file("memory_even.hex")
