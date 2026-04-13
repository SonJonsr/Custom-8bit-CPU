from intelhex import IntelHex

ih= IntelHex()

# Fyll hele 64KiB med 0x00 (eller 0xFF)
for i in range(65536):
    ih[i] = 0x00

# Sett dine spesifikke verdier her
# ih_odd[0x0000] = 0xAF  # Eksempel: Instruksjon 1
# ih_even[0x0001] = 0x01  # Eksempel: Data 1
# ... osv

ih.write_hex_file("memory.hex")
