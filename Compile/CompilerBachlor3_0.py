# -*- coding: utf-8 -*-
"""
Created on Sun Dec 21 16:26:39 2025

@author: sonog
"""

# -*- coding: utf-8 -*-
import os

filename = "TestingBranching"

startkode  = 0x0001
Write_binary_to = 0x00c0

def intTo4hex(t):
    ttemp = hex(t)
    
    while len(ttemp) < 6:
        ttemp = ttemp[:2] + "0" + ttemp[2:]
    while len(ttemp) > 6:
        errorList.append("Error (0) : intTo4hex overflow with value : " + str(t))
        ttemp = ttemp[:len(ttemp)-1]
    return ttemp


def intTo2hex(t):
    ttemp = hex(t)
    
    while len(ttemp) < 4:
        ttemp = ttemp[:2] + "0" + ttemp[2:]
    while len(ttemp) > 4:
        ttemp = ttemp[:len(ttemp)-1]
        errorList.append("Error (1) : intTo2hex overflow with value : " + str(t))
    return ttemp


program = []

Used_Addresses = []

komandoer   = []
komando     = ""
kode = []
errorList = []



lengde = 0
StoppAALese = False

script_dir = os.path.dirname(os.path.abspath(__file__))
filename = os.path.join(script_dir, filename)

filename += ".txt"
file = open(filename,'r')

for line in file:
    line = line + " "
    komando     = ""
    tempkomando = []
    
    #print("ny linje")
    StoppAALese = False
    for char in line:
        if StoppAALese == False:
            if char =='#':
                StoppAALese = True
                if len(komando) > 0:
                   tempkomando.append(komando)
            elif not (char.isspace() or char =='#'):
                komando += char
                lengde += 1
            
            elif lengde > 0:
                tempkomando.append(komando)
                
                komando     = ""
                lengde = 0
    if len(tempkomando) > 0:

        komandoer.append(tempkomando)
file.close()     
#for linje in komandoer:
    #print(linje , " aaaa")
    



programlengde = 0
minnelengde = 0
pointere = []

pointingTo = []

for linje in komandoer:
    temp = []
        
    if linje[0] == "jump" or linje[0] == "bop" or linje[0] == "bon" or linje[0] == "boz" or linje[0] == "bnz" or linje[0] == "boo" or linje[0] == "bno" or linje[0] == "bou" or linje[0] == "bnu" or linje[0] == "boc" or linje[0] == "bnc":
        kode.append(linje)
        programlengde += 3
    elif linje[0] == "nop" or linje[0] == "Clear" or linje[0] == "clear"or linje[0] == "inc" or linje[0] == "dec" or linje[0] == "rs" or linje[0] == "not" or linje[0] == "and" or linje[0] == "or" or linje[0] == "add" or linje[0] == "addc" or linje[0] == "mov":
        kode.append(linje)
        programlengde += 1
    elif linje[0] == "def":
        kode.append(linje)
    elif linje[0] == "store" or linje[0] == "load":
        kode.append(linje)
        programlengde += 3
    elif linje[0][0] == '@':
        tempP = ""
        for i in range(1,len(linje[0])):
            tempP += linje[0][i]
            
        LL = round((programlengde+startkode)%256)
        HH = round(((programlengde+startkode)-LL)/256)
        temp.append(hex(HH))
        temp.append(hex(LL))
        temp.append(tempP)
        print(temp)
        
        
        if (len(temp[0]) < 4):
            t = temp[0][0] + temp[0][1] + "0" + temp[0][2]
            temp[0] = t
        
        if (len(temp[1]) < 4):
            t = temp[1][0] + temp[1][1] + "0" + temp[1][2]
            temp[1] = t
        
        
        #tempPoint = [hex(HH),hex(LL),tempP]
        pointere.append(temp)
        
    else:
        errorList.append(linje)
        #print("error", linje)
        


    print(linje)
startminne = startkode + programlengde





kom = ""

index = startkode

for linje in kode:
    #print(linje)           #to see all the lines read
    branching = False
    RW = False
    temp = []
    if linje[0] == "nop":
        
        temp.append(index)
        temp.append("0x00 #nop")
        index += 1
        program.append(temp)
        
    elif linje[0] == "jump": 
        temp.append(index)
        temp.append("0x02 #jump")
        index += 1
        program.append(temp)
        branching = True
        
    elif linje[0] == "bop" :
        temp.append(index)
        temp.append("0x03 #bop")
        index += 1
        program.append(temp)
        branching = True
        
    elif linje[0] == "bon" :
        temp.append(index)
        temp.append("0x04 #bon")
        index += 1
        program.append(temp)
        branching = True
        
    elif linje[0] == "boz" :
        temp.append(index)
        temp.append("0x05 #boz")
        index += 1
        program.append(temp)
        branching = True
        
    elif linje[0] == "bnz":
        temp.append(index)
        temp.append("0x06 #bnz")
        index += 1
        program.append(temp)
        branching = True
        
    elif linje[0] == "boo": 
        temp.append(index)
        temp.append("0x07 #boo")
        index += 1
        program.append(temp)
        branching = True
        
    elif linje[0] == "bno": 
        temp.append(index)
        temp.append("0x08 #bno")
        index += 1
        program.append(temp)
        branching = True
        
    elif linje[0] == "bou": 
        temp.append(index)
        temp.append("0x09 #bou")
        index += 1
        program.append(temp)
        branching = True
        
    elif linje[0] == "bnu":
        temp.append(index)
        temp.append("0x0a #bnu")
        index += 1
        program.append(temp)
        branching = True
        
    elif linje[0] == "boc": 
        temp.append(index)
        temp.append("0x0b #boc")
        index += 1
        program.append(temp)
        branching = True
        
    elif linje[0] == "bnc": 
        temp.append(index)
        temp.append("0x0c #bnc")
        index += 1
        program.append(temp)
        branching = True
        
    elif linje[0] == "Clear" or linje[0] == "clear":
        temp.append(index)
        if linje[1] == "f":
            temp.append("0x0e #clear flags")
        elif linje[1] == "r":
            temp.append("0x0f #clear all registers")
        elif linje[1] == "a":
            temp.append("0x10 #clear a")
        elif linje[1] == "b":
            temp.append("0x11 #clear b")
        elif linje[1] == "c":
            temp.append("0x12 #clear c")
        elif linje[1] == "d":
            temp.append("0x13 #clear d")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
            
        
        index += 1
        program.append(temp)
        
    elif linje[0] == "inc":
        temp.append(index)
        
        if linje[1] == "a":
            temp.append("0x14 #inc a")
        elif linje[1] == "b":
            temp.append("0x15 #inc b")
        elif linje[1] == "c":
            temp.append("0x16 #inc c")
        elif linje[1] == "d":
            temp.append("0x17 #inc d")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
        
        index += 1
        program.append(temp)
    elif linje[0] == "dec":
        temp.append(index)
        
        if linje[1] == "a":
            temp.append("0x18 #dec a")
        elif linje[1] == "b":
            temp.append("0x19 #dec b")
        elif linje[1] == "c":
            temp.append("0x1a #dec c")
        elif linje[1] == "d":
            temp.append("0x1b #dec d")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
        
        index += 1
        program.append(temp)

    elif linje[0] == "rs":
        temp.append(index)
        
        if linje[1] == "a":
            temp.append("0x1c #rs a")
        elif linje[1] == "b":
            temp.append("0x1d #rs b")
        elif linje[1] == "c":
            temp.append("0x1e #rs c")
        elif linje[1] == "d":
            temp.append("0x1f #rs d")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
        
        index += 1
        program.append(temp)
        
    elif linje[0] == "store":
        RW = True
        temp.append(index)
        
        if linje[1] == "a":
            temp.append("0x20 #store a")
        elif linje[1] == "b":
            temp.append("0x21 #store b")
        elif linje[1] == "c":
            temp.append("0x22 #store c")
        elif linje[1] == "d":
            temp.append("0x23 #store d")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
        
        index += 1
        program.append(temp)
        
        
        
    elif linje[0] == "load":
        RW = True
        temp.append(index)
        
        if linje[1] == "a":
            temp.append("0x24 #load a")
        elif linje[1] == "b":
            temp.append("0x25 #load b")
        elif linje[1] == "c":
            temp.append("0x26 #load c")
        elif linje[1] == "d":
            temp.append("0x27 #load d")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
        
        index += 1
        program.append(temp)
        
        
    elif linje[0] == "not":
        temp.append(index)
        
        if linje[1] == "a":
            temp.append("0x28 #not a")
        elif linje[1] == "b":
            temp.append("0x29 #not b")
        elif linje[1] == "c":
            temp.append("0x2a #not c")
        elif linje[1] == "d":
            temp.append("0x2b #not d")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
        
        index += 1
        program.append(temp)
    elif linje[0] == "and":
        temp.append(index)
        
        if linje[1] == "a":
            if linje[2] == "a":
                temp.append("0x30 #and a a")
            elif linje[2] == "b":
                temp.append("0x31 #and a b")
            elif linje[2] == "c":
                temp.append("0x32 #and a c")
            elif linje[2] == "d":
                temp.append("0x33 #and a d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
            
        elif linje[1] == "b":
            if linje[2] == "a":
                temp.append("0x34 #and b a")
            elif linje[2] == "b":
                temp.append("0x35 #and b b")
            elif linje[2] == "c":
                temp.append("0x36 #and b c")
            elif linje[2] == "d":
                temp.append("0x37 #and b d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
                
        elif linje[1] == "c":
            if linje[2] == "a":
                temp.append("0x38 #and c a")
            elif linje[2] == "b":
                temp.append("0x39 #and c b")
            elif linje[2] == "c":
                temp.append("0x3a #and c c")
            elif linje[2] == "d":
                temp.append("0x3b #and c d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
                
        elif linje[1] == "d":
            if linje[2] == "a":
                temp.append("0x3c #and d a")
            elif linje[2] == "b":
                temp.append("0x3d #and d b")
            elif linje[2] == "c":
                temp.append("0x3e #and d c")
            elif linje[2] == "d":
                temp.append("0x3f #and d d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
        
        index += 1
        program.append(temp)
    elif linje[0] == "or":
        temp.append(index)
        
        if linje[1] == "a":
            if linje[2] == "a":
                temp.append("0x40 #or a a")
            elif linje[2] == "b":
                temp.append("0x41 #or a b")
            elif linje[2] == "c":
                temp.append("0x42 #or a c")
            elif linje[2] == "d":
                temp.append("0x43 #or a d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
            
        elif linje[1] == "b":
            if linje[2] == "a":
                temp.append("0x44 #or b a")
            elif linje[2] == "b":
                temp.append("0x45 #or b b")
            elif linje[2] == "c":
                temp.append("0x46 #or b c")
            elif linje[2] == "d":
                temp.append("0x47 #or b d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
                
        elif linje[1] == "c":
            if linje[2] == "a":
                temp.append("0x48 #or c a")
            elif linje[2] == "b":
                temp.append("0x49 #or c b")
            elif linje[2] == "c":
                temp.append("0x4a #or c c")
            elif linje[2] == "d":
                temp.append("0x4b #or c d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
                
        elif linje[1] == "d":
            if linje[2] == "a":
                temp.append("0x4c #or d a")
            elif linje[2] == "b":
                temp.append("0x4d #or d b")
            elif linje[2] == "c":
                temp.append("0x4e #or d c")
            elif linje[2] == "d":
                temp.append("0x4f #or d d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
        
        index += 1
        program.append(temp)
    elif linje[0] == "add":
        temp.append(index)
        
        if linje[1] == "a":
            if linje[2] == "a":
                temp.append("0x50 #add a a")
            elif linje[2] == "b":
                temp.append("0x51 #add a b")
            elif linje[2] == "c":
                temp.append("0x52 #add a c")
            elif linje[2] == "d":
                temp.append("0x53 #add a d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
            
        elif linje[1] == "b":
            if linje[2] == "a":
                temp.append("0x54 #add b a")
            elif linje[2] == "b":
                temp.append("0x55 #add b b")
            elif linje[2] == "c":
                temp.append("0x56 #add b c")
            elif linje[2] == "d":
                temp.append("0x57 #add b d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
                
        elif linje[1] == "c":
            if linje[2] == "a":
                temp.append("0x58 #add c a")
            elif linje[2] == "b":
                temp.append("0x59 #add c b")
            elif linje[2] == "c":
                temp.append("0x5a #add c c")
            elif linje[2] == "d":
                temp.append("0x5b #add c d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
                
        elif linje[1] == "d":
            if linje[2] == "a":
                temp.append("0x5c #add d a")
            elif linje[2] == "b":
                temp.append("0x5d #add d b")
            elif linje[2] == "c":
                temp.append("0x5e #add d c")
            elif linje[2] == "d":
                temp.append("0x5f #add d d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
        
        index += 1
        program.append(temp)
    elif linje[0] == "addc":
        temp.append(index)
        
        if linje[1] == "a":
            if linje[2] == "a":
                temp.append("0x60 #addc a a")
            elif linje[2] == "b":
                temp.append("0x61 #addc a b")
            elif linje[2] == "c":
                temp.append("0x62 #addc a c")
            elif linje[2] == "d":
                temp.append("0x63 #addc a d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
            
        elif linje[1] == "b":
            if linje[2] == "a":
                temp.append("0x64 #addc b a")
            elif linje[2] == "b":
                temp.append("0x65 #addc b b")
            elif linje[2] == "c":
                temp.append("0x66 #addc b c")
            elif linje[2] == "d":
                temp.append("0x67 #addc b d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
                
        elif linje[1] == "c":
            if linje[2] == "a":
                temp.append("0x68 #addc c a")
            elif linje[2] == "b":
                temp.append("0x69 #addc c b")
            elif linje[2] == "c":
                temp.append("0x6a #addc c c")
            elif linje[2] == "d":
                temp.append("0x6b #addc c d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
                
        elif linje[1] == "d":
            if linje[2] == "a":
                temp.append("0x6c #addc d a")
            elif linje[2] == "b":
                temp.append("0x6d #addc d b")
            elif linje[2] == "c":
                temp.append("0x6e #addc d c")
            elif linje[2] == "d":
                temp.append("0x6f #addc d d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
        
        index += 1
        program.append(temp)
    elif linje[0] == "mov":
        temp.append(index)
        
        if linje[1] == "a":
            if linje[2] == "a":
                temp.append("0x70 #mov a a")
            elif linje[2] == "b":
                temp.append("0x71 #mov a b")
            elif linje[2] == "c":
                temp.append("0x72 #mov a c")
            elif linje[2] == "d":
                temp.append("0x73 #mov a d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
            
        elif linje[1] == "b":
            if linje[2] == "a":
                temp.append("0x74 #mov b a")
            elif linje[2] == "b":
                temp.append("0x75 #mov b b")
            elif linje[2] == "c":
                temp.append("0x76 #mov b c")
            elif linje[2] == "d":
                temp.append("0x77 #mov b d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
                
        elif linje[1] == "c":
            if linje[2] == "a":
                temp.append("0x78 #mov c a")
            elif linje[2] == "b":
                temp.append("0x79 #mov c b")
            elif linje[2] == "c":
                temp.append("0x7a #mov c c")
            elif linje[2] == "d":
                temp.append("0x7b #mov c d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
                
        elif linje[1] == "d":
            if linje[2] == "a":
                temp.append("0x7c #mov d a")
            elif linje[2] == "b":
                temp.append("0x7d #mov d b")
            elif linje[2] == "c":
                temp.append("0x7e #mov d c")
            elif linje[2] == "d":
                temp.append("0x7f #mov d d")
            else:
                errorList.append(linje)
                temp.append("0x00 #error")
        else:
            errorList.append(linje)
            temp.append("0x00 #error")
        
        index += 1
        program.append(temp)
    elif linje[0] == "def":
        print("defin " + linje[0] + " som " + linje[1])
        temp.append(int(linje[1],16))
        temp.append(linje[2] + " #def")
    
        program.append(temp)
        
        
    if branching == True:
        
        #print(pointere, len(pointere), index)
        fant = False
        print(linje)
        print(str(len(pointere)) + " ---------")
        for i in range(0,len(pointere)):
            #print(linje[1],i)
            #print(pointere[i][2])
            
            if linje[1] == pointere[i][2] and fant == False:
                fant = True
                temp = []
                temp.append(index)
                temp.append(pointere[i][0] + " #" +  linje[1] + ".HH")
                index += 1
                program.append(temp)
                temp = []
                temp.append(index)
                temp.append(pointere[i][1] + " #" +  linje[1] + ".LL")
                index += 1
                program.append(temp)
        
        if fant == False:
            errorList.append(linje)
            temp = []
            temp.append(index)
            temp.append("0x00 #" +  linje[1] + ".HH")
            index += 1
            program.append(temp)
            temp = []
            temp.append(index)
            temp.append("0x00 #" +  linje[1] + ".LL")
            index += 1
            program.append(temp)
            
    
    elif RW == True:
        temp = []
        temp.append(index)
        temp.append("0x" + linje[2][2] + linje[2][3])
        index += 1
        program.append(temp)
        
        temp = []
        temp.append(index)
        temp.append("0x" + linje[2][4] + linje[2][5])
        index += 1
        program.append(temp)
    


   
        
print("  ")
program.sort()
for i in range(1, len(program)): #testing if there are more then one in a single address
    if program[i-1][0] == program[i][0]:
        errorList.append("address : " + str(i) + " (" + str(intTo4hex(i)) + ")" + " allready in use")
        print("error ")

for i in range(0, len(program)):

    print(str(intTo4hex(program[i][0])) + "> " + program[i][1])

print(" ")
print(" ")


rom = bytearray([0x00] * 65536)                                         # Makes a .bin file
for line in program:
    byte = line[1][0] + line[1][1] + line[1][2] + line[1][3]  
    rom[line[0]]  = int(byte,16)


script_dir = os.path.dirname(os.path.abspath(__file__))
ROM_Filename = os.path.join(script_dir, "rom.bin")


with open(ROM_Filename, "wb") as out_file:
    out_file.write(rom)



def hexdump_compact(filename, bytes_per_line=16):
    with open(filename, "rb") as f:
        offset = 0
        last_chunk = None
        skipped = False

        while True:
            chunk = f.read(bytes_per_line)
            if not chunk:
                break

            if chunk == last_chunk:
                if not skipped:
                    print("*")
                    skipped = True
            else:
                hex_bytes = " ".join(f"{b:02x}" for b in chunk)
                ascii_bytes = "".join(chr(b) if 32 <= b < 127 else "." for b in chunk)
                print(f"{offset:08x}  {hex_bytes:<48}  |{ascii_bytes}|")
                skipped = False

            last_chunk = chunk
            offset += bytes_per_line

        print(f"{offset:08x}")

hexdump_compact("rom.bin")


print(" ")
for i in range(0,Write_binary_to):
    temp = str(bin(rom[i]))
    temp2 = ""
    for j in range(2, len(str(bin(rom[i])))):
        temp2 = temp2 + temp[j]
    
    
    while len(temp2) < 8:
        temp2 = "0" + temp2
    print('        "' + temp2 + '",')    
    if i == Write_binary_to-1:
        print("        others => (others => '0')")
    


for error in errorList:
    print("error : " , error)