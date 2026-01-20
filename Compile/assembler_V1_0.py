# -*- coding: utf-8 -*-
"""
Created on Sun Jan 18 22:51:05 2026

@author: sonog
"""
#pulls out text from file:
import os

filename = "test"
Enable_Halt_At_End = True


filename += ".c"
script_dir = os.path.dirname(os.path.abspath(__file__))
filename = os.path.join(script_dir, filename)

file = open(filename,'r')

load_lines = [] 
for line in file:
    load_lines.append(line)
    
file.close() 




SpaceCode_var = 5

HighByte_Sufix = "_HH"
LowByte_Sufix = "_LL"

#shorten the lines of code in the file:
lines = []
for i in range(0, len(load_lines)):
    temp = ""
    nr_slash = 0
    for j in range(0,(len(load_lines[i])-1)):
        if load_lines[i][j] == "/":
            nr_slash = nr_slash + 1             #counts nr of '/' since 2 means a comment
        elif nr_slash < 2:    
            temp = temp + load_lines[i][j]
        else:
            j = (len(load_lines[i])-1)          #if there are 2 '/' it stops the sentance / line
    temp = temp.rstrip()                        # takes away trailing whitespace
    if len(temp) > 0:
        if temp[0] != "#" or temp[1] != "i":    #ignores #includes
            lines.append(temp)                  #removes empty lines

for line in lines:
    print(line)         #prints out valid lines

#seperates the words
comands   = []
for line in lines:
    line = line + " "
    Comand     = ""
    Temp_Comand = []
    length = 0
    
    for char in line:
        if not char.isspace():
            Comand += char
            length += 1
        
        elif length > 0:
            Temp_Comand.append(Comand)
            
            Comand     = ""
            length = 0
    if len(Temp_Comand) > 0:
        comands.append(Temp_Comand)

#for line in comands:
#    print(line) 

#finds the declarations of variables:
Program_Code = []

#Define

List_defines = []
List_8_bit = []
List_16_bit = []

for line in comands:
    
    if line[0] == "#define":
        Define = [line[1]]
        temp = ""
        if line[2][len(line[2])-1] != ";":
            temp = line[2]
        else:
            for i in range(0,len(line[2])-1):
                temp = temp + line[2][i]        
        Define.append(temp)
        List_defines.append(Define)
        
    #8-bit ints
    elif line[0] == "int8_t" or line[0] == "char":
        print(line[1][len(line[1])-2])
        if line[1][len(line[1])-2] != "]":
            int8 = [line[1]]
            temp = ""
            for i in range(0,len(line[3])-1):
                temp = temp + line[3][i]        
            int8.append(temp)
            List_8_bit.append(int8)
        else:
            print("8-bit list : " + str(line))

    #16-bit ints
    elif line[0] == "int16_t":
        int16 = [line[1]]
        temp = ""
        for i in range(0,len(line[3])-1):
            temp = temp + line[3][i]        
        int16.append(temp)
        List_16_bit.append(int16)
        
    else:
        Program_Code.append(line)

for line in List_defines:
    if (int(line[1]) < 127) and (int(line[1]) > -128):
        List_8_bit.append(line)
    else:
        List_16_bit.append(line)

print(" ")
print("Variables : ")
print(" ")


print("8-bit values : ")
for line in List_8_bit:
    print(line)
print(" ")
print("16-bit values : ")
for line in List_16_bit:
    print(line)

print(" ")
print("prog : ")
for line in Program_Code:
    print(line)
print(" ")


Assembely_code = []

RunProgramLength = 1



for line in List_8_bit:
    temp =  hex(int(line[1]))
    if len(temp) < 4:
        temp = "0x0" + temp[2]
    
    Assembely_code.append(["def","0x0000", temp, "#", line[0]])
    print("def" + " 0x0000 : " + temp)






def Is8Bit(test_variable):    #cheks if the varible is 8-bit
    is8bit = False
    for element in List_8_bit:
        if test_variable == element[0]:
            is8bit = True
    return is8bit

def Is16Bit(test_variable):
    is16bit = False
    for element in List_16_bit:
        if test_variable == element[0]:
            is16bit = True
    return is16bit

def RemSemCol(test_variable):   #removes ";" if there is one
    withoutSemCol = ""
    
    if test_variable[len(test_variable)-1] == ";":
        for i in range(0,len(test_variable)-1):
            withoutSemCol = withoutSemCol + test_variable[i]
    else:
        withoutSemCol = test_variable  
    return withoutSemCol

def intTo4hex(t):
    ttemp = hex(t)
    
    if len(ttemp) < 3:
        ttemp += "0000"
    elif len(ttemp) < 4:
        ttemp = "0x000" + ttemp[2]
    elif len(ttemp) < 5:
        ttemp = "0x00" + ttemp[2] + ttemp[3]
    elif len(ttemp) < 6:
        ttemp = "0x0" + ttemp[2] + ttemp[3] + ttemp[4]
    return ttemp
    
temp = []
for line in Program_Code:
    temp = []
    print("looking : " , line)
    if len(line) > 4:
        if line[1] == "=" and line[3] == "+":   #finds x = y + z"
            temp.append(line[0])                #finds the variables used
            temp.append(line[2])
            temp.append(RemSemCol(line[4]))
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["#", temp[0] ,"=", temp[1], "+" , temp[2]])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength = RunProgramLength + 10
            
            #elif Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):
                
                
                
        elif line[1] == "=" and line[3] == "-": #finds x = y - z
            temp.append(line[0])                #finds the variables used
            temp.append(line[2])
            temp.append(RemSemCol(line[4]))
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["#",temp[0],"=", temp[1],"-", temp[2]])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength = RunProgramLength + 12
            
    if len(line) > 2:           
        if line[1] == "+=":             #finds x += y
            temp.append(line[0]) 
            temp.append(RemSemCol(line[2]))
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["#" , temp[0] ,"+=", temp[1]])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["add","b","a "])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength = RunProgramLength + 10
        
        elif line[1] == "-=":           #finds x -= y
            temp.append(line[0]) 
            temp.append(RemSemCol(line[2]))
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["#" , temp[0] ,"-=", temp[1]])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength = RunProgramLength + 12

    if len(line) > 1:
        if RemSemCol(line[1]) == "++":
            temp.append(line[0])
            if Is8Bit(temp[0]) == True:
                Assembely_code.append(["#" , temp[0] ,"++"])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["inc","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength = RunProgramLength + 7
                
        elif RemSemCol(line[1]) == "--":
            temp.append(line[0])
            if Is8Bit(temp[0]) == True:
                Assembely_code.append(["#" , temp[0] ,"--"])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["dec","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength = RunProgramLength + 7

if Enable_Halt_At_End == True:
    Assembely_code.append(["@at_HALT_end"])
    Assembely_code.append(["jump at_HALT_end"])
    RunProgramLength = RunProgramLength + 4


print(" ")
print("asm : "+ str(RunProgramLength))
for line in Assembely_code:
    print(line)
print(" ")



#makes addresses for the variables

#8 bit vars:

Count8BitVars = len(List_8_bit)

for i in range(0,Count8BitVars):
    List_8_bit[i].append(RunProgramLength+i+1+SpaceCode_var)
    print(List_8_bit[i])
    
print(" ")
Count16BitVars = len(List_16_bit)
for i in range(0,Count16BitVars):
    List_16_bit[i].append(RunProgramLength+2*i+1+Count8BitVars+SpaceCode_var)
    print(List_16_bit[i])



#for i in range(0,len(Assembely_code)):
for line in Assembely_code:
    address = ""
    if len(line) > 0:
        if line[0] == "store" or line[0] == "load" or line[0] == "def":
            if Is8Bit(line[len(line)-1]) == True:
                print("8bit ja")
                for variable in List_8_bit:
                    if variable[0] == line[len(line)-1]:
                        if line[1] == "0x0000":
                            line[1] = (intTo4hex(int(variable[2])))
                            print(line, str(intTo4hex(int(variable[2]))))
                        elif line[2] == "0x0000":
                            line[2] = (intTo4hex(int(variable[2])))
                            print(line, (intTo4hex(int(variable[2]))))
                            
                            
                            
print(" ")  
print("asm : "+ str(RunProgramLength))
for line in Assembely_code:
    ASM_line = ""
    for element in line:
        ASM_line = ASM_line + element
        for i in range(len(element),8):
            ASM_line = ASM_line + " "
    print(ASM_line)
print(" ")

