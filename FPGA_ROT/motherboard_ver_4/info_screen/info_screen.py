from intelhex import IntelHex

hvl_logo = {
    '1': 0x08,
    '2': 0x0a,
    '3': 0x0d,
    '4': 0x0e,
    '5': 0x10,
    '6': 0x11
}


special = {
    '═': 0xcd,
    '║': 0xba,
    '╔': 0xc9,
    '╗': 0xbb,
    '╚': 0xc8,
    '╝': 0xbc,
    '╠': 0xcc,
    '╣': 0xb9,
    '╟': 0xc7,
    '╢': 0xb6,
    '─': 0xc4,
    '│': 0xb3,
    '┴': 0xc1,
    '┬': 0xc2,
    'Å': 0x8f,
    'å': 0x86,
    'Ø': 0x99,
    'ø': 0x94,
    'Æ': 0x92,
    'æ': 0x91
}


info = (
    "╔═════INFO═════╗"
    "║   Adresse:   ║"
    "║    $ZZZZ     ║"
    "╟──────┬───────╢"
    "║ R/W: │ Data: ║"
    "║  Z   │  $ZZ  ║"
    "╟──────┴───────╢"
    "║  Clock freq: ║"
    "║   ZZ E-Z Hz  ║"
    "╠══════════════╣"
    "║ Dette er en  ║"
    "║selvlagd 8-bit║"
    "║ datamaskin!  ║"
    "║              ║"
    "║  CPU-en er   ║"
    "║laget med TTL-║"
    "║logikk. Resten║"
    "║av maskinen er║"
    "║ laget med en ║"
    "║    FPGA.     ║"
    "║              ║"
    "║     1234     ║"
    "║      56      ║"
    "║ Høgskulen på ║"
    "║  Vestlandet  ║"
    "║              ║"
    "║Laget av:     ║"
    "║Jacob Kvasnes,║"
    "║Sondre Johnsen║"
    "╚══════════════╝"
      
)
# 1. Load the existing hex file into memory
ih = IntelHex("memory.hex")

# 2. Make your modifications
for i, char in enumerate(info):

    byte = hvl_logo.get(char)
    color = 0x0b

    if byte is None:
        byte = special.get(char)
        color = 0x03
        if byte is None:
            byte = ord(char)
    
    ih[0xef00 + i*2] = byte
    ih[0xef00 + i*2 + 1] = color

# 3. Overwrite the original file with the modified data
# The library recalculates checksums and saves over the existing file
ih.write_hex_file("memory.hex")
print(f"Successfully modified and overwrote {"memory.hex"}")


