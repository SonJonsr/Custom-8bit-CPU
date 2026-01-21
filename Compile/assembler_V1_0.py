# -*- coding: utf-8 -*-
"""
Created on Sun Jan 18 22:51:05 2026

@author: sonog
"""

#Change these variables to change input / output files
C_Filename = "Simple_C_output"
ASM_Filename = "ASM_output" 
Enable_Halt_At_End = True #if true adds a HALT at the end of the program
SpaceCode_var = 2  #space between code and variables in memory
#------------------------------------------------------------------------
#pulls out text from file:

import os
ASM_Filename += ".txt"
C_Filename += ".c"
script_dir = os.path.dirname(os.path.abspath(__file__))
C_Filename = os.path.join(script_dir, C_Filename)
ASM_Filename = os.path.join(script_dir, ASM_Filename)


file = open(C_Filename,'r')

load_lines = [] 
for line in file:
    load_lines.append(line)
    
file.close() 






HighByte_Sufix = "_HH"
LowByte_Sufix = "_LL"

errors = []
Warnings = []

def intTo4hex(t):
    ttemp = hex(t)
    
    while len(ttemp) < 6:
        ttemp = ttemp[:2] + "0" + ttemp[2:]
    while len(ttemp) > 6:
        errors.append("Error (0) : intTo4hex overflow with value : " + str(t))
        ttemp = ttemp[:len(ttemp)-1]
    return ttemp

def intTo2hex(t):
    if t < 0:
        t = 256 + t
    ttemp = hex(t)
    
    while len(ttemp) < 4:
        ttemp = ttemp[:2] + "0" + ttemp[2:]
    while len(ttemp) > 4:
        ttemp = ttemp[:len(ttemp)-1]
        errors.append("Error (1) : intTo2hex overflow with value : " + str(t))
    return ttemp


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



def split16BitVarTo8(number):
    numberLL = 0
    numberHH = 0
    if number < 0:
        number = 65536 + number
    numberLL = number % 256
    numberHH = round((number - numberLL) / 256)

    return [numberHH, numberLL]

#finds the declarations of variables:
Program_Code = []

#Define

List_defines = []
List_8_bit = []
List_16_bit = []

for line in comands:
    
    if line[0] == "#" and line[1] == "define":   #defines
        Define = [line[2]]
        temp = ""

        valueElement = 3
        if line[3] == "-":
            valueElement = 4
            temp = "-"


        temp += line[valueElement]
      
            #for i in range(0,len(line[2])-1):
            #    temp = temp + line[4][i]        
        Define.append(temp)
        List_defines.append(Define)
        
    #8-bit ints
    elif line[0] == "int8_t" or line[0] == "char":
        print(line[1][len(line[1])-2])
        if line[1][len(line[1])-2] != "]":
            int8 = [line[1]]
            temp = ""

            valueElement = 3
            if line[valueElement] == "-":
                valueElement = 4
                temp = "-"

            for i in range(0,len(line[valueElement])):
                temp += line[valueElement][i]        
            int8.append(temp)
            List_8_bit.append(int8)
        else:
            print("8-bit list : " + str(line))

    #16-bit ints
    elif line[0] == "int16_t":
        varname = line[1]
        int16 = [line[1]]
        temp = ""

        valueElement = 3
        if line[valueElement] == "-":
            valueElement = 4
            temp = "-"
        for i in range(0,len(line[valueElement])):
            temp = temp + line[valueElement][i]        
        int16.append(temp)
        List_16_bit.append(int16)
        #print(varname + " = " + temp + ", 16 to 2x 8 : ")
        #print( intTo2hex(split16BitVarTo8(int(temp))[0]) + " " + intTo2hex(split16BitVarTo8(int(temp))[1]) )

        #make them 2x 8-bit variables
        
        

        
    else:
        Program_Code.append(line)


for line in List_defines:
    if (int(line[1]) < 127) and (int(line[1]) > -128):
        List_8_bit.append(line)
    else:
        List_16_bit.append(line)


for line in List_16_bit:
    varname = line[0]
    #make them 2x 8-bit variables
    LowVar = varname + LowByte_Sufix
    HighVar = varname + HighByte_Sufix
    List_8_bit.append([HighVar, str(split16BitVarTo8(int(line[1]))[0])])
    List_8_bit.append([LowVar, str(split16BitVarTo8(int(line[1]))[1])])


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
    temp =  intTo2hex(int(line[1]))
    print(temp)
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



temp = []
for line in Program_Code:
    Line_Found = False
    temp = []
    #print("looking : " , line)
    if len(line) > 4:
        if line[1] == "=" and line[3] == "+":   #finds x = y + z"
            temp.append(line[0])                #finds the variables used
            temp.append(line[2])
            temp.append(RemSemCol(line[4]))
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):                 #8 = 8 + 8
                Assembely_code.append(["# " + temp[0] +"(8) = "+ temp[1] +"(8) + "+ temp[2] + "(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength = RunProgramLength + 10
                Line_Found = True

            elif Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):           #8 = 8 + 16
                Assembely_code.append(["# " + temp[0] +"(8) = "+ temp[1] +"(8) + "+ temp[2] + "(16)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength = RunProgramLength + 10
                Line_Found = True

            elif Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):           #8 = 16 + 8
                Assembely_code.append(["# " + temp[0] +"(8) = "+ temp[1] +"(16) + "+ temp[2] +"(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength = RunProgramLength + 10
                Line_Found = True

            elif Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):           #8 = 16 + 16
                Assembely_code.append(["# " + temp[0] +"(8) = "+ temp[1] +"(16) + "+ temp[2] +"(16)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength = RunProgramLength + 10
                Line_Found = True

            elif Is16Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):           #16 = 8 + 8
                Assembely_code.append(["# " + temp[0] +"(16) = "+ temp[1] +"(8) + "+ temp[2] +"(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+LowByte_Sufix])
                Assembely_code.append(["clear","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+HighByte_Sufix])
                RunProgramLength = RunProgramLength + 14
                Line_Found = True

            elif Is16Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):           #16 = 8 + 16
                Assembely_code.append(["# " + temp[0] +"(16) = "+ temp[1] +"(8) + "+ temp[2] +"(16)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["load","c","0x0000","#", temp[2]+HighByte_Sufix])
                Assembely_code.append(["clear","d"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["addc","d","c"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+LowByte_Sufix])
                Assembely_code.append(["store","c","0x0000","#", temp[0]+HighByte_Sufix])
                RunProgramLength = RunProgramLength + 18
                Line_Found = True
            
            elif Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):           #16 = 16 + 8
                Assembely_code.append(["# " + temp[0] +"(16) = "+ temp[1] +"(16) + "+ temp[2] +"(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[2]])
                Assembely_code.append(["load","b","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","c","0x0000","#", temp[1]+HighByte_Sufix])
                Assembely_code.append(["clear","d"])
                Assembely_code.append(["add","a","c"])
                Assembely_code.append(["addc","b","d"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+LowByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#", temp[0]+HighByte_Sufix])
                RunProgramLength = RunProgramLength + 18
                Line_Found = True

            elif Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):           #16 = 16 + 16
                print("16bit add found !!!-------------------------------------------------")
                Assembely_code.append(["# " + temp[0] +"(16) = "+ temp[1] +"(16) + "+ temp[2] +"(16)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]+HighByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","c","0x0000","#", temp[2]+HighByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["add","d","b"])
                Assembely_code.append(["addc","c","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#", temp[0]+LowByte_Sufix])
                RunProgramLength = RunProgramLength + 20
                Line_Found = True
                
        elif line[1] == "=" and line[3] == "-": #finds x = y - z
            temp.append(line[0])                #finds the variables used
            temp.append(line[2])
            temp.append(RemSemCol(line[4]))
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(8) - "+ temp[2]+"(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength = RunProgramLength + 12
                Line_Found = True
            
            elif Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(8) - "+ temp[2]+"(16)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength = RunProgramLength + 12
                Line_Found = True
            elif Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(16) - "+ temp[2]+"(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength = RunProgramLength + 12
                Line_Found = True
            elif Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(16) - "+ temp[2]+"(16)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength = RunProgramLength + 12
                Line_Found = True

            elif Is16Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# "+temp[0]+"(16) = "+ temp[1]+"(8) - "+ temp[2]+"(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["clear","c"])
                Assembely_code.append(["clear","d"])
                Assembely_code.append(["not","c"])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["addc","d","c"]) # if inc b caused a carry aka b was 0
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["addc","d","c"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+LowByte_Sufix])
                Assembely_code.append(["store","c","0x0000","#", temp[0]+HighByte_Sufix])
                RunProgramLength = RunProgramLength + 20
                Line_Found = True

            elif Is16Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):
                
                Assembely_code.append(["# "+temp[0]+"(16) = "+ temp[1]+"(8) - "+ temp[2]+"(16)"])
                Assembely_code.append(["load","b","0x0000","#", temp[1]])
                Assembely_code.append(["load","c","0x0000","#", temp[2]+HighByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["clear","a"])
                Assembely_code.append(["not","c"])
                Assembely_code.append(["not","d"])
                Assembely_code.append(["inc","d"])
                Assembely_code.append(["addc","a","c"]) # if inc d caused a carry aka d was 0
                Assembely_code.append(["add","d","b"])
                Assembely_code.append(["addc","c","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+LowByte_Sufix])
                Assembely_code.append(["store","c","0x0000","#", temp[0]+HighByte_Sufix])
                RunProgramLength = RunProgramLength + 22
                Line_Found = True

            elif Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# "+temp[0]+"(16) = "+ temp[1]+"(16) - "+ temp[2]+"(8)"])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["load","c","0x0000","#", temp[1]+HighByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["clear","a"])
                Assembely_code.append(["not","c"])
                Assembely_code.append(["not","d"])
                Assembely_code.append(["inc","d"])
                Assembely_code.append(["addc","a","c"]) # if inc d caused a carry aka d was 0
                Assembely_code.append(["add","d","b"])
                Assembely_code.append(["addc","c","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+LowByte_Sufix])
                Assembely_code.append(["store","c","0x0000","#", temp[0]+HighByte_Sufix])
                RunProgramLength = RunProgramLength + 22
                Line_Found = True

            elif Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# "+temp[0]+"(16) = "+ temp[1]+"(16) - "+ temp[2]+"(16)"])
                Assembely_code.append(["load","b","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","c","0x0000","#", temp[2]+HighByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["clear","a"])
                Assembely_code.append(["not","c"])
                Assembely_code.append(["not","d"])
                Assembely_code.append(["inc","d"])
                Assembely_code.append(["addc","a","c"]) # if inc d caused a carry aka d was 0
                Assembely_code.append(["load","a","0x0000","#", temp[1]+HighByte_Sufix])
                Assembely_code.append(["add","d","b"])
                Assembely_code.append(["addc","c","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+LowByte_Sufix])
                Assembely_code.append(["store","c","0x0000","#", temp[0]+HighByte_Sufix])
                RunProgramLength = RunProgramLength + 25
                Line_Found = True 




    if len(line) > 2 and Line_Found == False:           
        if line[1] == "+=":             #finds x += y
            temp.append(line[0]) 
            temp.append(RemSemCol(line[2]))
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["# " + temp[0] + " += " + temp[1]])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["add","b","a "])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength = RunProgramLength + 10
                Line_Found = True
        
        elif line[1] == "-=":           #finds x -= y
            temp.append(line[0]) 
            temp.append(RemSemCol(line[2]))
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["# " + temp[0] + " -= " + temp[1]])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength = RunProgramLength + 12
                Line_Found = True

        elif line[1] == "=":           #finds x = y                                 MUST BE AFTER X = Y + Z and X = Y - Z!!!!!!
            temp.append(line[0]) 
            temp.append(RemSemCol(line[2]))
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["# " + temp[0] + " = " + temp[1]])
                Assembely_code.append(["load","a","0x0000","#" , temp[1]])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength = RunProgramLength + 6
                Line_Found = True

    if len(line) > 1 and Line_Found == False:
        if RemSemCol(line[1]) == "++":
            temp.append(line[0])
            if Is8Bit(temp[0]) == True:
                Assembely_code.append(["# " + temp[0] +" ++"])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["inc","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength = RunProgramLength + 7
                Line_Found = True
                
        elif RemSemCol(line[1]) == "--":
            temp.append(line[0])
            if Is8Bit(temp[0]) == True:
                Assembely_code.append(["# " + temp[0] + " --"])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["dec","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength = RunProgramLength + 7
                Line_Found = True
    if Line_Found == False:
        Warnings.append("Warning (0): could not parse line : " + str(line))

if Enable_Halt_At_End == True:
    Assembely_code.append(["@at_HALT_end"])
    Assembely_code.append(["jump at_HALT_end"])
    RunProgramLength = RunProgramLength + 4
    


print(" ")
print("asm length : "+ str(RunProgramLength))
#for line in Assembely_code:
#    print(line)
#print(" ")



#makes addresses for the variables

#8 bit vars:

Count8BitVars = len(List_8_bit)

for i in range(0,Count8BitVars):
    List_8_bit[i].append(RunProgramLength+i+1+SpaceCode_var)
    print(List_8_bit[i])
    
#print(" ")
#Count16BitVars = len(List_16_bit)
#for i in range(0,Count16BitVars):
#    List_16_bit[i].append(RunProgramLength+2*i+1+Count8BitVars+SpaceCode_var)
#    print(List_16_bit[i])



#for i in range(0,len(Assembely_code)):
for line in Assembely_code:
    address = ""
    if len(line) > 0:
        if line[0] == "store" or line[0] == "load" or line[0] == "def":
            if Is8Bit(line[len(line)-1]) == True:
                #print("8bit ja")
                for variable in List_8_bit:
                    if variable[0] == line[len(line)-1]:
                        if line[1] == "0x0000":
                            line[1] = (intTo4hex(int(variable[2])))
                            #print(line, str(intTo4hex(int(variable[2]))))
                        elif line[2] == "0x0000":
                            line[2] = (intTo4hex(int(variable[2])))
                            #print(line, (intTo4hex(int(variable[2]))))
                            
                            
                            
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

#creates the ASM file
file = open(ASM_Filename,'w')
for line in Assembely_code:
    ASM_line = ""
    for element in line:
        ASM_line = ASM_line + element
        for i in range(len(element),8):
            ASM_line = ASM_line + " "
    file.write(ASM_line + "\n")
file.close() 

print("\nwarnings: " + str(len(Warnings)))
for warn in Warnings:
    print(warn)

print("\nerrors: " + str(len(errors)))
for error in errors:
    print(error)
print("")
