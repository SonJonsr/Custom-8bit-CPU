# -*- coding: utf-8 -*-
"""
Created on Sun Jan 18 22:51:05 2026

@author: sonog


problems:
1)  if an 8-bit variable is negative it will give wrong results when used in addition to 16-bit variables!!
    apply a fix for this!!

"""

#Change these variables to change input / output files
C_Filename = "Simple_C_output"
ASM_Filename = "ASM_output" 
Enable_Halt_At_End = True #if true adds a HALT at the end of the program
Ignore_Printf_Warnings = True
Ignore_Include_Warnings = True
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


Is_Defined = False

Branch_Count = 0
Branch_Name1 = ""
Branch_Name2 = ""

HighByte_Sufix = "_HH"
LowByte_Sufix = "_LL"

errors = []
Warnings = []



End_List = [[["jump","0x0000","#Jump to main again"]]] #adding the main() loopback when it sees the last '}'
End_Index= 0

mem_vars = []
mem_index = 0

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
    print(line)
    #print(" ------\\\\\\\---- ")
    if line[0] == "#" and line[1] == "define":   #defines
        Define = [line[2]]
        temp = ""

        valueElement = 3
        if line[3] == "-":
            valueElement = 4
            temp = "-"
        
        temp += line[valueElement]
        
        if valueElement == 3:
            if len(temp) > 2:
                first = str(temp[0] + temp[1])
                if first == "0x":
                    #print(" ----------------- ")
                    temp = int(temp, 16)

        
      
            #for i in range(0,len(line[2])-1):
            #    temp = temp + line[4][i]        
        Define.append(temp)
        List_defines.append(Define)
        
    #8-bit ints
    elif line[0] == "int8_t" or line[0] == "char":
        if line[2] == "=":
            #print(line[1][len(line[1])-2])
            if line[1][len(line[1])-2] != "]":
                int8 = [line[1]]
                temp = ""
    
                valueElement = 3
                if line[valueElement] == "-":
                    valueElement = 4
                    temp = "-"
    
                for i in range(0,len(line[valueElement])):
                    temp += line[valueElement][i]     
                    
                if valueElement == 3:
                    if len(temp) > 2:
                        first = str(temp[0] + temp[1])
                        if first == "0x":
                            #print(" ----------------- ")
                            temp = int(temp, 16)
                            
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
        print(line[0])
        print(line[valueElement],valueElement)
        if line[valueElement] == "-":
            valueElement = 4
            temp = "-"
        for i in range(0,len(line[valueElement])):
            temp = temp + line[valueElement][i] 
        print("-------------------------------")
        #print(temp, len(temp), valueElement)
        #print(temp[0] + temp[1])
        
        
        if valueElement == 3:
                if len(temp) > 2:
                    first = str(temp[0] + temp[1])
                    if first == "0x":
                        temp = int(temp, 16)

        
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
print("Non changing values : ")
for line in List_defines:
    print(line)
print(" ")

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



RunProgramLength = 4

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

def IsDefined(test_variable):
    isDefined = False
    for element in List_defines:
        if test_variable == element[0]:
            isDefined = True
    return isDefined

def RemSemCol(test_variable):   #removes ";" if there is one
    withoutSemCol = ""
    if test_variable[len(test_variable)-1] == ";":
        for i in range(0,len(test_variable)-1):
            withoutSemCol = withoutSemCol + test_variable[i]
    else:
        withoutSemCol = test_variable  
    return withoutSemCol

Max_Shift_Amount = 15

Assembely_code.append(["nop #start buffer"])

temp = []
for line in Program_Code:
    Line_Found = False
    Is_Defined = False
    temp = []
    #print("looking : " , line)
    if len(line) > 4:
        if line[1] == "=" and line[3] == "+":   #finds x = y + z"
            temp.append(line[0])                #finds the variables used
            temp.append(line[2])
            temp.append(line[4])
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):                 #8 = 8 + 8
                Assembely_code.append(["# " + temp[0] +"(8) = "+ temp[1] +"(8) + "+ temp[2] + "(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength += 10
                Line_Found = True

            elif Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):           #8 = 8 + 16
                Assembely_code.append(["# " + temp[0] +"(8) = "+ temp[1] +"(8) + "+ temp[2] + "(16)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength += 10
                Line_Found = True

            elif Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):           #8 = 16 + 8
                Assembely_code.append(["# " + temp[0] +"(8) = "+ temp[1] +"(16) + "+ temp[2] +"(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength += 10
                Line_Found = True

            elif Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):           #8 = 16 + 16
                Assembely_code.append(["# " + temp[0] +"(8) = "+ temp[1] +"(16) + "+ temp[2] +"(16)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength += 10
                Line_Found = True

            elif Is16Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):           #16 = 8 + 8
                Assembely_code.append(["# " + temp[0] +"(16) = "+ temp[1] +"(8) + "+ temp[2] +"(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+LowByte_Sufix])
                Assembely_code.append(["clear","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+HighByte_Sufix])
                RunProgramLength += 14
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
                RunProgramLength += 18
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
                RunProgramLength += 18
                Line_Found = True

            elif Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):           #16 = 16 + 16
                Assembely_code.append(["# " + temp[0] +"(16) = "+ temp[1] +"(16) + "+ temp[2] +"(16)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]+HighByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","c","0x0000","#", temp[2]+HighByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["add","d","b"])
                Assembely_code.append(["addc","c","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#", temp[0]+LowByte_Sufix])
                RunProgramLength += 20
                Line_Found = True
                
        elif line[1] == "=" and line[3] == "-": #finds x = y - z
            temp.append(line[0])                #finds the variables used
            temp.append(line[2])
            temp.append(line[4])
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(8) - "+ temp[2]+"(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength += 12
                Line_Found = True
            
            elif Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(8) - "+ temp[2]+"(16)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                Assembely_code.append(["load","b","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength += 12
                Line_Found = True
            elif Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(16) - "+ temp[2]+"(8)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#", temp[2]])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength += 12
                Line_Found = True
            elif Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(16) - "+ temp[2]+"(16)"])
                Assembely_code.append(["load","a","0x0000","#", temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#", temp[2]+LowByte_Sufix])
                Assembely_code.append(["not","b"])
                Assembely_code.append(["inc","b"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                RunProgramLength += 12
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
                RunProgramLength += 20
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
                RunProgramLength += 22
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
                RunProgramLength += 22
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
                Assembely_code.append(["store","a","0x0000","#", temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#", temp[0]+LowByte_Sufix])
                RunProgramLength += 25
                Line_Found = True 
        
        elif line[1] == "=" and line[3] == "<<": #finds x = y << z
            temp.append(line[0])                #finds the variables used
            temp.append(line[2])
            temp.append(line[4])
            

            if IsDefined(temp[2]):
                #print("shift amount is a define")
                for i in range(0,len(List_defines)):
                    if temp[2] == List_defines[i][0]:
                        Is_Defined = True
                        shift_amount = int(List_defines[i][1])
                        if shift_amount > Max_Shift_Amount or shift_amount < 0:
                            Warnings.append("Warning (1): Shift amount(" + str(shift_amount) + ") too big or invalid : " + str(line))

                            if Is8Bit(temp[0]):
                                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(U) << "+ str(shift_amount)," (" + temp[0] + " will be 0)"])
                                Assembely_code.append(["clear","a"])
                                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                                RunProgramLength += 4
                                Line_Found = True
                            elif Is16Bit(temp[0]):
                                Assembely_code.append(["# "+temp[0]+"(16) = "+ temp[1]+"(U) << "+ str(shift_amount)," (" + temp[0] + " will be 0)"])
                                Assembely_code.append(["clear","a"])
                                Assembely_code.append(["store","a","0x0000","#", temp[0] + HighByte_Sufix])
                                Assembely_code.append(["store","a","0x0000","#", temp[0] + LowByte_Sufix])
                                RunProgramLength += 7
                                Line_Found = True
                        else:
                            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(8) << "+ temp[2]+"(" + str(shift_amount) +")"])
                                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                                for j in range(0,shift_amount):
                                    Assembely_code.append(["add","a","a"," #shift left by 1"])
                                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                                RunProgramLength += 6 + shift_amount
                                Line_Found = True
                            elif Is8Bit(temp[0]) and Is16Bit(temp[1]):
                                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(16) << "+ temp[2]+"(" + str(shift_amount) +")"])
                                Assembely_code.append(["load","a","0x0000","#", temp[1]+LowByte_Sufix])
                                for j in range(0,shift_amount):
                                    Assembely_code.append(["add","a","a"," #shift left by 1"])
                                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                                RunProgramLength += 6 + shift_amount
                                Line_Found = True
                            elif Is16Bit(temp[0]) and Is8Bit(temp[1]):

                                Assembely_code.append(["# "+temp[0]+"(16) = "+ temp[1]+"(8) << "+ temp[2]+"(" + str(shift_amount) +")"])
                                Assembely_code.append(["load","b","0x0000","#", temp[1]])
                                Assembely_code.append(["clear","a"])
                                for j in range(0,shift_amount):
                                    Assembely_code.append(["add","b","b"," #shift left by 1"])
                                    Assembely_code.append(["addc","a","a"," #"])
                                Assembely_code.append(["store","a","0x0000","#", temp[0]+HighByte_Sufix])
                                Assembely_code.append(["store","b","0x0000","#", temp[0]+LowByte_Sufix])
                                RunProgramLength += 10 + (2 * shift_amount)
                                Line_Found = True
                            
                            elif Is16Bit(temp[0]) and Is16Bit(temp[1]):
                                Assembely_code.append(["# "+temp[0]+"(16) = "+ temp[1]+"(16) << "+ temp[2]+"(" + str(shift_amount) +")"])
                                Assembely_code.append(["load","a","0x0000","#", temp[1]+HighByte_Sufix])
                                Assembely_code.append(["load","b","0x0000","#", temp[1]+LowByte_Sufix])
                                for j in range(0,shift_amount):
                                    Assembely_code.append(["add","b","b"," #shift left by 1"])
                                    Assembely_code.append(["addc","a","a"," #"])
                                Assembely_code.append(["store","a","0x0000","#", temp[0]+HighByte_Sufix])
                                Assembely_code.append(["store","b","0x0000","#", temp[0]+LowByte_Sufix])
                                RunProgramLength += 12 + (2 * shift_amount)
                                Line_Found = True

            elif Is8Bit(temp[2]) or Is16Bit(temp[2]):
                Line_Found = True
                errors.append("Error (3): Shift amount variable (" + temp[2] + ") not defined as constant : " + str(line))
                #print("8bit shift left found !!!-------------------------------------------------")

        
        elif line[1] == "=" and line[3] == ">>": #finds x = y >> z
            temp.append(line[0])                #finds the variables used
            temp.append(line[2])
            temp.append(line[4])
            
            
            if IsDefined(temp[2]):
                #print("shift amount is a define")
                for i in range(0,len(List_defines)):
                    if temp[2] == List_defines[i][0]:
                        Is_Defined = True
                        shift_amount = int(List_defines[i][1])
                        if shift_amount > Max_Shift_Amount or shift_amount < 0:
                            Warnings.append("Warning (1): Shift amount(" + str(shift_amount) + ") too big or invalid : " + str(line))

                            if Is8Bit(temp[0]):
                                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(U) >> "+ str(shift_amount)," (" + temp[0] + " will be 0)"])
                                Assembely_code.append(["clear","a"])
                                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                                RunProgramLength += 4
                                Line_Found = True
                            elif Is16Bit(temp[0]):
                                Assembely_code.append(["# "+temp[0]+"(16) = "+ temp[1]+"(U) >> "+ str(shift_amount)," (" + temp[0] + " will be 0)"])
                                Assembely_code.append(["clear","a"])
                                Assembely_code.append(["store","a","0x0000","#", temp[0] + HighByte_Sufix])
                                Assembely_code.append(["store","a","0x0000","#", temp[0] + LowByte_Sufix])
                                RunProgramLength += 7
                                Line_Found = True
                        else:
                            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                                Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(8) >> "+ temp[2]+"(" + str(shift_amount) +")"])
                                Assembely_code.append(["load","a","0x0000","#", temp[1]])
                                for j in range(0,shift_amount):
                                    Assembely_code.append(["rs","a"," #right shift by 1"])
                                Assembely_code.append(["store","a","0x0000","#", temp[0]])
                                RunProgramLength += 6 + shift_amount
                                Line_Found = True
                            elif Is8Bit(temp[0]) and Is16Bit(temp[1]):
                                # Assembely_code.append(["# "+temp[0]+"(8) = "+ temp[1]+"(16) >> "+ temp[2]+"(" + str(shift_amount) +")"])
                                # Assembely_code.append(["load","a","0x0000","#", temp[1]+LowByte_Sufix])
                                # for j in range(0,shift_amount):
                                #     Assembely_code.append(["add","a","a"," #right shift by 1"])
                                # Assembely_code.append(["store","a","0x0000","#", temp[0]])
                                # RunProgramLength += 6 + shift_amount
                                Line_Found = True
                                errors.append("this right shift is not in (8bit) = (16bit) >> ")
                            elif Is16Bit(temp[0]) and Is8Bit(temp[1]):

                                Assembely_code.append(["# "+temp[0]+"(16) = "+ temp[1]+"(8) >> "+ temp[2]+"(" + str(shift_amount) +")"])
                                Assembely_code.append(["load","b","0x0000","#", temp[1]])
                                Assembely_code.append(["clear","a"])
                                for j in range(0,shift_amount):
                                    Assembely_code.append(["rs","b"," #right shift by 1"])
                                Assembely_code.append(["store","a","0x0000","#", temp[0]+HighByte_Sufix])
                                Assembely_code.append(["store","b","0x0000","#", temp[0]+LowByte_Sufix])
                                RunProgramLength += 10 + (1 * shift_amount)
                                Line_Found = True
                            
                            elif Is16Bit(temp[0]) and Is16Bit(temp[1]):
                                Assembely_code.append(["# "+temp[0]+"(16) = "+ temp[1]+"(16) >> "+ temp[2]+"(" + str(shift_amount) +")"])
                                Assembely_code.append(["load","a","0x0000","#", temp[1]+HighByte_Sufix])
                                Assembely_code.append(["load","b","0x0000","#", temp[1]+LowByte_Sufix])
                                for j in range(0,shift_amount):
                                    Assembely_code.append(["rs","b"," #right shift by 1"])
                                    Assembely_code.append(["rs","a"," #right shift by 1"])
                                Assembely_code.append(["store","a","0x0000","#", temp[0]+HighByte_Sufix])
                                Assembely_code.append(["store","b","0x0000","#", temp[0]+LowByte_Sufix])
                                RunProgramLength += 12 + (2 * shift_amount)
                                errors.append("this right shift is not in (16bit) = (16bit) >> " + str(line))
                                Line_Found = True

            elif Is8Bit(temp[2]) or Is16Bit(temp[2]):
                Line_Found = True
                errors.append("Error (3): Shift amount variable (" + temp[2] + ") not defined as constant: " + str(line))
    
    if len(line) == 6 and Line_Found == False:        
        if line[1] == "=" and line[3] == "||": #finds x = y || z; //or
            temp.append(line[0])                #finds the variables used
            temp.append(line[2])
            temp.append(line[4])
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(8bit) or " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["or","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True
                
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(8bit) or " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["or","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True
                
            if Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(16bit) or " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["or","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True 
            
            if Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(16bit) or " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["or","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True 
                
            if Is16Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(8bit) or " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["or","d","b"])
                Assembely_code.append(["clear","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 14
                Line_Found = True
                
            if Is16Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(8bit) or " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","d","0x0000","#" , temp[1]])
                Assembely_code.append(["load","a","0x0000","#" , temp[2]+HighByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["or","d","b"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 16
                Line_Found = True
            
            if Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(16bit) or " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["load","a","0x0000","#" , temp[1]+HighByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["or","d","b"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 16
                Line_Found = True
            
            if Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(16bit) or " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","a","0x0000","#" , temp[1]+HighByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","c","0x0000","#" , temp[2]+HighByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["or","d","b"])
                Assembely_code.append(["or","c","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 20
                Line_Found = True
    
    if len(line) == 6 and Line_Found == False:        
        if line[1] == "=" and line[3] == "^": #finds x = y ^ z; //xor
            temp.append(line[0])                #finds the variables used
            temp.append(line[2])
            temp.append(line[4])
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(8bit) xor " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["xor","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True
                
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(8bit) xor " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["xor","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True
                
            if Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(16bit) xor " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["xor","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True 
            
            if Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(16bit) xor " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["xor","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True 
                
            if Is16Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(8bit) xor " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["xor","d","b"])
                Assembely_code.append(["clear","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 14
                Line_Found = True
                
            if Is16Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(8bit) xor " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","d","0x0000","#" , temp[1]])
                Assembely_code.append(["load","b","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["load","a","0x0000","#" , temp[2]+HighByte_Sufix])
                Assembely_code.append(["xor","d","b"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 16
                Line_Found = True
            
            if Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(16bit) xor " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","a","0x0000","#" , temp[1]+HighByte_Sufix])
                Assembely_code.append(["xor","d","b"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 16
                Line_Found = True
            
            if Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(16bit) xor " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","a","0x0000","#" , temp[1]+HighByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","c","0x0000","#" , temp[2]+HighByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["xor","d","b"])
                Assembely_code.append(["xor","c","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 20
                Line_Found = True
            
    if len(line) == 6 and Line_Found == False:        
        if line[1] == "=" and line[3] == "&&": #finds x = y && z; //and
            temp.append(line[0])                #finds the variables used
            temp.append(line[2])
            temp.append(line[4])
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(8bit) and " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["and","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True
                
            if Is8Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(8bit) and " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["and","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True
                
            if Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(16bit) and " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["and","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True 
            
            if Is8Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(8bit) = " + temp[1] + "(16bit) and " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["and","d","b"])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True 
                
            if Is16Bit(temp[0]) and Is8Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(8bit) and " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["and","d","b"])
                Assembely_code.append(["clear","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 14
                Line_Found = True
                
            if Is16Bit(temp[0]) and Is8Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(8bit) and " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","d","0x0000","#" , temp[1]])
                Assembely_code.append(["load","b","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["xor","d","b"])
                Assembely_code.append(["clear","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 14
                Line_Found = True
            
            if Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is8Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(16bit) and " + temp[2] + "(8bit)"])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["xor","d","b"])
                Assembely_code.append(["clear","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 14
                Line_Found = True
            
            if Is16Bit(temp[0]) and Is16Bit(temp[1]) and Is16Bit(temp[2]):
                Assembely_code.append(["# " + temp[0] + "(16bit) = " + temp[1] + "(16bit) and " + temp[2] + "(16bit)"])
                Assembely_code.append(["load","a","0x0000","#" , temp[1]+HighByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["load","c","0x0000","#" , temp[2]+HighByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#" , temp[2]+LowByte_Sufix])
                Assembely_code.append(["and","d","b"])
                Assembely_code.append(["and","c","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 20
                Line_Found = True
                

    if len(line) == 4 and Line_Found == False:           
        if line[1] == "+=":             #finds x += y ;
            temp.append(line[0]) 
            temp.append(line[2])
            
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["# " + temp[0] + "(8) += " + temp[1] + "(8)"])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["add","b","a "])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True
            elif Is8Bit(temp[0]) and Is16Bit(temp[1]):
                Assembely_code.append(["# " + temp[0] + "(8) += " + temp[1]+"(16)"])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["add","b","a "])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength += 10
                Line_Found = True
            elif Is16Bit(temp[0]) and Is8Bit(temp[1]):                                  #   Problem if 8-bit is negative---------------------
                Assembely_code.append(["# " + temp[0] + "(16) += " + temp[1]+"(8)"])
                # Assembely_code.append(["load","a","0x0000","#" , temp[0]+HighByte_Sufix])
                # Assembely_code.append(["load","b","0x0000","#" , temp[0]+LowByte_Sufix])
                # Assembely_code.append(["load","d","0x0000","#" , temp[1]])
                # Assembely_code.append(["clear","c"])
                # Assembely_code.append(["add", "d","b "])
                # Assembely_code.append(["addc","c","a"])
                # Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                # Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                # RunProgramLength += 18
                # Line_Found = True
                
                
                Branch_Name1 = "branch" + str(Branch_Count)
                Branch_Count += 1
                Branch_Name2 = "branch" + str(Branch_Count)
                Branch_Count += 1
                
                # Assembely_code.append(["# " + temp[0] + "(16) = " + temp[1]+ "(8)"])
                Assembely_code.append(["load","a","0x0000","#" , temp[1]])              #3
                Assembely_code.append(["clear","b"]) #4
                Assembely_code.append(["add", "a","b"])#5
                Assembely_code.append(["clear","a"]) #6
                Assembely_code.append(["bon",Branch_Name1])#9
                Assembely_code.append(["nop"])#10                                  #mby dont need this
                Assembely_code.append(["jump",Branch_Name2])#13
                Assembely_code.append(["nop"])#14
                Assembely_code.append(["@"+Branch_Name1])
                Assembely_code.append(["not", "a"])#15
                Assembely_code.append(["@"+Branch_Name2])
                Assembely_code.append(["nop"])#16
                Assembely_code.append(["load","c","0x0000","#" , temp[0]+HighByte_Sufix]) #19
                Assembely_code.append(["load","d","0x0000","#" , temp[0]+LowByte_Sufix])  #22
                Assembely_code.append(["add", "d","b "]) #23
                Assembely_code.append(["addc","c","a"]) #24
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])#27
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])#30
                RunProgramLength += 30
                Line_Found = True
                
                
            elif Is16Bit(temp[0]) and Is16Bit(temp[1]):  
                Assembely_code.append(["# " + temp[0] + "(16) += " + temp[1]+"(16)"])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["load","b","0x0000","#" , temp[0]+LowByte_Sufix])
                Assembely_code.append(["load","c","0x0000","#" , temp[1]+HighByte_Sufix])
                Assembely_code.append(["load","d","0x0000","#" , temp[1]+LowByte_Sufix])
                Assembely_code.append(["add", "d","b "])
                Assembely_code.append(["addc","c","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])
                RunProgramLength += 20 #
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
                RunProgramLength += 12
                Line_Found = True
                
            if Is16Bit(temp[0]) and Is16Bit(temp[1]):
                Assembely_code.append(["# " + temp[0] + " -= " + temp[1]])
                Assembely_code.append(["load","c","0x0000","#" , temp[1]+HighByte_Sufix])   #3
                Assembely_code.append(["load","d","0x0000","#" , temp[1]+LowByte_Sufix])    #6
                Assembely_code.append(["clear","b"])                                        #7    
                Assembely_code.append(["not","c"])                                          #8 
                Assembely_code.append(["not","d"])                                          #9 
                Assembely_code.append(["inc","d"])                                          #10 
                Assembely_code.append(["addc","b","c"])                                     #11
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+HighByte_Sufix])   #14
                Assembely_code.append(["load","b","0x0000","#" , temp[0]+LowByte_Sufix])    #17
                Assembely_code.append(["add", "d","b"])                                     #18 
                Assembely_code.append(["addc","c","a"])                                     #19 
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])  #22
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])   #25
                RunProgramLength += 25
                Line_Found = True


        elif line[1] == "=" and line[3] == ";":           #finds x = y                                 MUST BE AFTER X = Y + Z and X = Y - Z!!!!!!
            temp.append(line[0]) 
            temp.append(RemSemCol(line[2]))
            print(" --- ")
            print(temp[1])
            print(" --- ")
            if (temp[1] != "clear") and (temp[1] != "Clear") and (temp[1] != "CLEAR"):
                if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                    Assembely_code.append(["# " + temp[0] + "(8) = " + temp[1] + "(8)"])
                    Assembely_code.append(["load","a","0x0000","#" , temp[1]])
                    Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                    RunProgramLength += 6
                    Line_Found = True
                elif Is8Bit(temp[0]) and Is16Bit(temp[1]):
                    Assembely_code.append(["# " + temp[0] + "(8) = " + temp[1]+ "(16)"])
                    Assembely_code.append(["load","b","0x0000","#" , temp[1] + LowByte_Sufix])
                    Assembely_code.append(["store","b","0x0000","#" , temp[0]])
                    RunProgramLength += 6
                    Line_Found = True
                elif Is16Bit(temp[0]) and Is8Bit(temp[1]):
                    Branch_Name1 = "branch" + str(Branch_Count)
                    Branch_Count += 1
                    Branch_Name2 = "branch" + str(Branch_Count)
                    Branch_Count += 1
                    
                    Assembely_code.append(["# " + temp[0] + "(16) = " + temp[1]+ "(8)"])
                    Assembely_code.append(["load","a","0x0000","#" , temp[1]])              #3
                    Assembely_code.append(["clear","b"]) #4
                    Assembely_code.append(["add", "a","b"])#5
                    Assembely_code.append(["clear","a"]) #6
                    Assembely_code.append(["bon",Branch_Name1])#9
                    Assembely_code.append(["nop"])#10                                  #mby dont need this
                    Assembely_code.append(["jump",Branch_Name2])#13
                    Assembely_code.append(["nop"])#14
                    Assembely_code.append(["@"+Branch_Name1])
                    Assembely_code.append(["dec", "a"])#15
                    Assembely_code.append(["@"+Branch_Name2])
                    Assembely_code.append(["nop"])#16
                    Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])#19
                    Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])#22
                    RunProgramLength += 22
                    Line_Found = True
                elif Is16Bit(temp[0]) and Is16Bit(temp[1]):
                    Assembely_code.append(["# " + temp[0] + "(16) = " + temp[1]+ "(16)"])
                    Assembely_code.append(["load","a","0x0000","#"  , temp[1]+HighByte_Sufix])  #3
                    Assembely_code.append(["load","b","0x0000","#"  , temp[1]+LowByte_Sufix])   #6
                    Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])  #9
                    Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])   #12
                    RunProgramLength += 12
                    Line_Found = True
                    
            elif Is8Bit(temp[0]):
                print(" --- ")
                print("clear   --- ")
                print(" --- ")
                Assembely_code.append(["# " + temp[0] + "(8) = 0x00"])
                Assembely_code.append(["clear","a"])                            #1
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])     #4
                RunProgramLength += 4
                Line_Found = True
            elif Is16Bit(temp[0]):
                print(" --- ")
                print("clear   --- ")
                print(" --- ")
                Assembely_code.append(["# " + temp[0] + "(16) = 0x0000"])
                Assembely_code.append(["clear","a"])                            #1
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])  #4
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+LowByte_Sufix])   #7
                RunProgramLength += 7
                Line_Found = True

    if len(line) > 1 and Line_Found == False:
        if RemSemCol(line[1]) == "++":
            temp.append(line[0])
            if Is8Bit(temp[0]) == True:
                Assembely_code.append(["# " + temp[0] +" ++"])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["inc","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength += 7
                Line_Found = True
                
            if Is16Bit(temp[0]) == True:
                Assembely_code.append(["# " + temp[0] +" ++"])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+HighByte_Sufix])   #3
                Assembely_code.append(["load","b","0x0000","#" , temp[0]+LowByte_Sufix])    #6
                Assembely_code.append(["clear","c"])                                        #7
                Assembely_code.append(["inc","b"])                                          #8
                Assembely_code.append(["addc","c","a"])                                     #9
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])  #12
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])   #15
                RunProgramLength += 15
                Line_Found = True
                
        elif RemSemCol(line[1]) == "--":
            temp.append(line[0])
            if Is8Bit(temp[0]) == True:
                Assembely_code.append(["# " + temp[0] + " --"])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["dec","a"])
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])
                RunProgramLength += 7
                Line_Found = True
                
            if Is16Bit(temp[0]) == True:                                                    #not totaly sure here-------------------
                Assembely_code.append(["# " + temp[0] +" --"])
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+HighByte_Sufix])   #3
                Assembely_code.append(["load","b","0x0000","#" , temp[0]+LowByte_Sufix])    #6
                Assembely_code.append(["clear","c"])                                        #7
                Assembely_code.append(["not","c"])                                          #8
                Assembely_code.append(["dec","b"])                                          #9
                Assembely_code.append(["addc","c","a"])                                     #10
                Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])  #13
                Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])   #16
                RunProgramLength += 16
                Line_Found = True
    if (len(line) == 5) and (Line_Found == False) and (line[1] == "=") and(line[2] == "!"):   #finds x = ! y        
        
        temp.append(line[0]) 
        temp.append(line[3])
        
        if Is8Bit(temp[0]) and Is8Bit(temp[1]):
            Assembely_code.append(["# " + temp[0] + "(8) = ! " + temp[1] + "(8)"])
            Assembely_code.append(["load","a","0x0000","#" , temp[1]])
            Assembely_code.append(["not","a"])
            Assembely_code.append(["store","a","0x0000","#" , temp[0]])
            RunProgramLength += 7
            Line_Found = True
   
        elif Is16Bit(temp[0]) and Is16Bit(temp[1]):
            Assembely_code.append(["# " + temp[0] + "(16) = " + temp[1]+ "(16)"])
            Assembely_code.append(["load","a","0x0000","#"  , temp[1]+HighByte_Sufix])  #3
            Assembely_code.append(["load","b","0x0000","#"  , temp[1]+LowByte_Sufix])   #6
            Assembely_code.append(["not","a"])  #7
            Assembely_code.append(["not","b"])  #8
            Assembely_code.append(["store","a","0x0000","#" , temp[0]+HighByte_Sufix])  #11
            Assembely_code.append(["store","b","0x0000","#" , temp[0]+LowByte_Sufix])   #14
            RunProgramLength += 14
            Line_Found = True
            
        elif Is8Bit(temp[0]) and Is16Bit(temp[1]):
            errors.append("Error (4): Cant convert 16bit(" + temp[1] + ") to 8bit (" + temp[0] + ") : " + str(line))
            Line_Found = True
        elif Is16Bit(temp[0]) and Is8Bit(temp[1]):
            errors.append("Error (4): Cant convert 8bit(" + temp[1] + ") to 16bit(" + temp[0] + ") in not opperation: " + str(line))
            Line_Found = True
            
    if (len(line) == 7) and (Line_Found == False) and (line[0] == "if"):
        print("fant if" + str(line)+"------------------------------------------------")
        temp.append(line[2]) 
        temp.append(line[4])
        
        Branch_Name1 = "branch" + str(Branch_Count)
        Branch_Count += 1
        
        if line[3] == "==":
            print("==")
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["load","a","0x0000","#" , temp[0]]) #3
                Assembely_code.append(["load","b","0x0000","#" , temp[1]]) #6
                Assembely_code.append(["not","a"]) #7
                Assembely_code.append(["inc","a"]) #8
                Assembely_code.append(["add","b","a"]) #9
                Assembely_code.append(["bnz",Branch_Name1]) #12
                Assembely_code.append(["nop"]) #13
                
                End_List.append([["@"+Branch_Name1],
                                 [ "nop" ]]) #14
                RunProgramLength += 14
                Line_Found = True
                
            if Is16Bit(temp[0]) and Is16Bit(temp[1]):
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+LowByte_Sufix]) #3
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix]) #6
                Assembely_code.append(["not","a"]) #7
                Assembely_code.append(["inc","a"]) #8
                Assembely_code.append(["add","b","a"]) #9
                Assembely_code.append(["bnz",Branch_Name1]) # 12
                Assembely_code.append(["nop"]) #13
                Assembely_code.append(["clear","a"]) #14
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+HighByte_Sufix]) #17
                Assembely_code.append(["addc","a","b"]) # 18
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+HighByte_Sufix]) #21
                Assembely_code.append(["not","a"])  #22
                Assembely_code.append(["add","b","a"]) #23
                Assembely_code.append(["bnz",Branch_Name1]) #26
                Assembely_code.append(["nop"]) #27
                
                End_List.append([["@"+Branch_Name1], 
                                 [ "nop" ] #28
                                 ])
                RunProgramLength += 28
                Line_Found = True
                
        if line[3] == "!=":
            print("!=")
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["not","a"])
                Assembely_code.append(["inc","a"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["boz",Branch_Name1])
                Assembely_code.append(["nop"]) #13

                End_List.append([["@"+Branch_Name1],[ "nop" ]])
                RunProgramLength += 14
                Line_Found = True
            
            if Is16Bit(temp[0]) and Is16Bit(temp[1]):
                
                Branch_Name2 = "branch" + str(Branch_Count)
                Branch_Count += 1
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+LowByte_Sufix]) #3
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix]) #6
                Assembely_code.append(["not","a"]) #7
                Assembely_code.append(["inc","a"]) #8
                Assembely_code.append(["add","b","a"]) #9
                Assembely_code.append(["bnz",Branch_Name1]) # 12
                Assembely_code.append(["nop"]) #13
                Assembely_code.append(["clear","a"]) #14
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+HighByte_Sufix]) #17
                Assembely_code.append(["addc","a","b"]) # 18
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+HighByte_Sufix]) #21
                Assembely_code.append(["not","a"])  #22
                Assembely_code.append(["add","b","a"]) #23
                Assembely_code.append(["boz",Branch_Name2]) #26
                Assembely_code.append(["@"+Branch_Name1])
                Assembely_code.append(["nop"]) #27
                
                End_List.append([["@"+Branch_Name2], 
                                 [ "nop" ] #28
                                 ])
                RunProgramLength += 28
                Line_Found = True
            
        if line[3] == "<":
            print("<")
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["not","a"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["bon",Branch_Name1])
                Assembely_code.append(["nop"]) #13

                End_List.append([["@"+Branch_Name1],[ "nop" ]])
                RunProgramLength += 13
                Line_Found = True
                
            if Is16Bit(temp[0]) and Is16Bit(temp[1]):
                
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+HighByte_Sufix]) #3
                Assembely_code.append(["load","b","0x0000","#" , temp[0]+LowByte_Sufix]) #6
                Assembely_code.append(["load","c","0x0000","#" , temp[1]+HighByte_Sufix]) #9
                Assembely_code.append(["load","d","0x0000","#" , temp[1]+LowByte_Sufix]) #12
                Assembely_code.append(["not","a"]) #13
                Assembely_code.append(["not","b"]) #14
                Assembely_code.append(["addc","d","b"]) #16
                Assembely_code.append(["addc","c","a"]) #17
                Assembely_code.append(["bon",Branch_Name1]) # 20
                Assembely_code.append(["nop"]) #24
                
                End_List.append([["@"+Branch_Name1], 
                                 [ "nop" ] #25
                                 ])
                RunProgramLength += 21
                Line_Found = True
            
            
            
        if line[3] == ">":
            print(">")
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["not","a"])
                Assembely_code.append(["dec","a"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["bop",Branch_Name1])
                Assembely_code.append(["nop"]) #13

                End_List.append([["@"+Branch_Name1],[ "nop" ]])
                RunProgramLength += 14
                Line_Found = True
                
            if Is16Bit(temp[0]) and Is16Bit(temp[1]):
                
                Assembely_code.append(["load","a","0x0000","#" , temp[1]+HighByte_Sufix]) #3
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix]) #6
                Assembely_code.append(["load","c","0x0000","#" , temp[0]+HighByte_Sufix]) #9
                Assembely_code.append(["load","d","0x0000","#" , temp[0]+LowByte_Sufix]) #12
                Assembely_code.append(["not","a"]) #13
                Assembely_code.append(["not","b"]) #14
                Assembely_code.append(["addc","d","b"]) #16
                Assembely_code.append(["addc","c","a"]) #17
                Assembely_code.append(["bon",Branch_Name1]) # 20
                Assembely_code.append(["nop"]) #24
                
                End_List.append([["@"+Branch_Name1], 
                                 [ "nop" ] #25
                                 ])
                RunProgramLength += 21
                Line_Found = True
                
    if (len(line) == 7) and (Line_Found == False):
        if (line[1] == "["):
            # print("------------------------------------")
            # print(line)
            temp.append(line[2]) 
            temp.append(line[5])
            if Is16Bit(temp[0]) and Is8Bit(temp[1]):
                #print("goood MEM")
                Assembely_code.append(["# MEM[" + temp[0] + "(8)] = " + temp[1] + "(8)"])
                Assembely_code.append(["load","a","0x0000","#"  , temp[0]+HighByte_Sufix])  #3
                Assembely_code.append(["load","b","0x0000","#"  , temp[0]+LowByte_Sufix])   #6
                Assembely_code.append(["store","a","0x0000"," + 0x0008"])                   #9
                Assembely_code.append(["store","b","0x0000"," + 0x0006"])                   #12
                Assembely_code.append(["load","a","0x0000","#" , temp[1]])                  #15
                Assembely_code.append(["store","a","0x0000"])                               #18
                RunProgramLength += 18
                Line_Found = True
        elif (line[3] == "["):
            #print("------------------------------------")
            
            temp.append(line[0]) 
            temp.append(line[4])
            if Is16Bit(temp[1]) and Is8Bit(temp[0]):
                #print("goood MEM")
                Assembely_code.append(["load","a","0x0000","#"  , temp[1]+HighByte_Sufix])  #3
                Assembely_code.append(["load","b","0x0000","#"  , temp[1]+LowByte_Sufix])   #6
                Assembely_code.append(["store","a","0x0000"," + 0x0005"])                   #9
                Assembely_code.append(["store","b","0x0000"," + 0x0003"])                   #12
                Assembely_code.append(["load","a","0x0000"])                                #15
                Assembely_code.append(["store","a","0x0000","#" , temp[0]])                 #18
                RunProgramLength += 18
                Line_Found = True
    if (len(line) == 7) and (Line_Found == False) and (line[0] == "while"):
        print("fant while----------------------------------------------------")
        print(line)
        temp.append(line[2]) 
        temp.append(line[4])
        
        Branch_Name1 = "branch" + str(Branch_Count)
        Branch_Count += 1
        
        Branch_Name2 = "branch" + str(Branch_Count)
        Branch_Count += 1
        
        if line[3] == "==":
            print("==")
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["@"+Branch_Name1])
                Assembely_code.append(["nop"]) #1
                Assembely_code.append(["load","a","0x0000","#" , temp[0]]) #4
                Assembely_code.append(["load","b","0x0000","#" , temp[1]]) #7
                Assembely_code.append(["not","a"]) #8
                Assembely_code.append(["inc","a"]) #9
                Assembely_code.append(["add","b","a"]) #10
                Assembely_code.append(["bnz",Branch_Name2]) # 13
                Assembely_code.append(["nop"]) #14
                
                End_List.append([["jump",Branch_Name1], #17
                                 ["@"+Branch_Name2],
                                 [ "nop" ] #18
                                 ])
                RunProgramLength += 18
                Line_Found = True
                
            if Is16Bit(temp[0]) and Is16Bit(temp[1]):
                Assembely_code.append(["@"+Branch_Name1])
                Assembely_code.append(["nop"]) #1
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+LowByte_Sufix]) #4
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix]) #7
                Assembely_code.append(["not","a"]) #8
                Assembely_code.append(["inc","a"]) #9
                Assembely_code.append(["add","b","a"]) #10
                Assembely_code.append(["bnz",Branch_Name2]) # 13
                Assembely_code.append(["nop"]) #14
                Assembely_code.append(["clear","a"]) #15
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+HighByte_Sufix]) #18
                Assembely_code.append(["addc","a","b"]) # 19
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+HighByte_Sufix]) #22
                Assembely_code.append(["not","a"])  #23
                Assembely_code.append(["add","b","a"]) #24
                Assembely_code.append(["bnz",Branch_Name2]) #27
                Assembely_code.append(["nop"]) #28
                
                End_List.append([["jump",Branch_Name1], #31
                                 ["@"+Branch_Name2],
                                 [ "nop" ] #32
                                 ])
                RunProgramLength += 32
                Line_Found = True
                
        if line[3] == "!=":
            print("!=")
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["@"+Branch_Name1])
                Assembely_code.append(["nop"]) #1
                Assembely_code.append(["load","a","0x0000","#" , temp[0]]) #4
                Assembely_code.append(["load","b","0x0000","#" , temp[1]]) #7
                Assembely_code.append(["not","a"]) #8
                Assembely_code.append(["inc","a"]) #9
                Assembely_code.append(["add","b","a"]) #10
                Assembely_code.append(["boz",Branch_Name2]) #13
                Assembely_code.append(["nop"]) #14

                End_List.append([["jump",Branch_Name1], #17
                                 ["@"+Branch_Name2],
                                 [ "nop" ] #18
                                 ])
                RunProgramLength += 18
                Line_Found = True
            
            if Is16Bit(temp[0]) and Is16Bit(temp[1]):
                Branch_Name3 = "branch" + str(Branch_Count)
                Branch_Count += 1
                
                Assembely_code.append(["@"+Branch_Name1])
                Assembely_code.append(["nop"]) #1
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+LowByte_Sufix]) #3
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix]) #6
                Assembely_code.append(["not","a"]) #7
                Assembely_code.append(["inc","a"]) #8
                Assembely_code.append(["add","b","a"]) #9
                Assembely_code.append(["bnz",Branch_Name2]) # 12
                Assembely_code.append(["nop"]) #13
                Assembely_code.append(["clear","a"]) #14
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+HighByte_Sufix]) #17
                Assembely_code.append(["addc","a","b"]) # 18
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+HighByte_Sufix]) #21
                Assembely_code.append(["not","a"])  #22
                Assembely_code.append(["add","b","a"]) #23
                Assembely_code.append(["boz",Branch_Name3]) #26
                Assembely_code.append(["@"+Branch_Name2])
                Assembely_code.append(["nop"]) #27
                
                
                End_List.append([["jump",Branch_Name1], #30
                                 ["@"+Branch_Name3],
                                 [ "nop" ] #31
                                 ])
                RunProgramLength += 31
                Line_Found = True
            
        if line[3] == "<":
            print("<")
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["@"+Branch_Name1])
                Assembely_code.append(["nop"]) #1
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["not","a"])    
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["bon",Branch_Name2])
                Assembely_code.append(["nop"]) #13

                End_List.append([["jump",Branch_Name1], #17
                                 ["@"+Branch_Name2],
                                 [ "nop" ] #18
                                 ])
                RunProgramLength += 17
                Line_Found = True
                
            
            if Is16Bit(temp[0]) and Is16Bit(temp[1]):
                Assembely_code.append(["@"+Branch_Name1])
                Assembely_code.append(["nop"]) #1
                Assembely_code.append(["load","a","0x0000","#" , temp[0]+HighByte_Sufix]) #4
                Assembely_code.append(["load","b","0x0000","#" , temp[0]+LowByte_Sufix]) #7
                Assembely_code.append(["load","c","0x0000","#" , temp[1]+HighByte_Sufix]) #10
                Assembely_code.append(["load","d","0x0000","#" , temp[1]+LowByte_Sufix]) #13
                Assembely_code.append(["not","a"]) #14
                Assembely_code.append(["not","b"]) #15
                Assembely_code.append(["addc","d","b"]) #17
                Assembely_code.append(["addc","c","a"]) #18
                Assembely_code.append(["bon",Branch_Name2]) # 21
                Assembely_code.append(["nop"]) #25
                
                End_List.append([["jump",Branch_Name1], #28
                                 ["@"+Branch_Name2],
                                 [ "nop" ] #29
                                 ])
                
                RunProgramLength += 29
                Line_Found = True
            
            
        if line[3] == ">":
            print(">")
            if Is8Bit(temp[0]) and Is8Bit(temp[1]):
                Assembely_code.append(["@"+Branch_Name1])
                Assembely_code.append(["nop"]) #1
                Assembely_code.append(["load","a","0x0000","#" , temp[0]])
                Assembely_code.append(["load","b","0x0000","#" , temp[1]])
                Assembely_code.append(["not","a"])
                Assembely_code.append(["dec","a"])
                Assembely_code.append(["add","b","a"])
                Assembely_code.append(["bop",Branch_Name2])
                Assembely_code.append(["nop"]) #13

                End_List.append([["jump",Branch_Name1], #17
                                 ["@"+Branch_Name2],
                                 [ "nop" ] #18
                                 ])
                RunProgramLength += 18
                Line_Found = True
            
            if Is16Bit(temp[0]) and Is16Bit(temp[1]):
                Assembely_code.append(["@"+Branch_Name1])
                Assembely_code.append(["nop"]) #1
                Assembely_code.append(["load","a","0x0000","#" , temp[1]+HighByte_Sufix]) #4
                Assembely_code.append(["load","b","0x0000","#" , temp[1]+LowByte_Sufix]) #7
                Assembely_code.append(["load","c","0x0000","#" , temp[0]+HighByte_Sufix]) #10
                Assembely_code.append(["load","d","0x0000","#" , temp[0]+LowByte_Sufix]) #13
                Assembely_code.append(["not","a"]) #14
                Assembely_code.append(["not","b"]) #15
                Assembely_code.append(["addc","d","b"]) #17
                Assembely_code.append(["addc","c","a"]) #18
                Assembely_code.append(["bon",Branch_Name2]) # 21
                Assembely_code.append(["nop"]) #25
                
                End_List.append([["jump",Branch_Name1], #28
                                 ["@"+Branch_Name2],
                                 [ "nop" ] #29
                                 ])
                
                RunProgramLength += 29
                Line_Found = True
                
    if (len(line) == 2) and (Line_Found == False):
        if line[1] == ':':
            #print("@"+line[0])
            Assembely_code.append(["@"+line[0]])
            Assembely_code.append(["nop"])
            RunProgramLength += 1
            Line_Found = True
            
    if (len(line) == 3) and (Line_Found == False):
        if line[0] == "goto":
            #print("@"+line[0])
            #Assembely_code.append(["@"+line[0]])
            Assembely_code.append(["jump", line[1]])
            RunProgramLength += 3
            Line_Found = True
            
    if (len(line) == 3) and (Line_Found == False):
        if (line[0] == "return") and (line[1] == '0'):
            Assembely_code.append(["jump","0x0000","#Jump to main again"])
            RunProgramLength += 3
            Line_Found = True  
    if (len(line) == 1) and (Line_Found == False) and (line[0] == "}"):
        print(len(End_List)-1)
        ending = End_List[len(End_List)-1]
        tempEnd = ""
        
        for i in range(len(ending)):
            tempEnd = ""
            for j in ending[i]:
                #print(j)    
                tempEnd += j + " "
            print(tempEnd)
            Assembely_code.append([tempEnd])
            
        #print(len(End_List))
        End_List.pop(len(End_List)-1)
        Line_Found = True
        
    if Line_Found == False:
        Warnings.append("Warning (0): could not parse line : " + str(line))
    

if Enable_Halt_At_End == True:
    Assembely_code.append(["@at_HALT_end"])
    Assembely_code.append(["nop"])
    Assembely_code.append(["jump at_HALT_end"])
    RunProgramLength += 5
    


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
    printOut = True
    temp_Warning = []
    if Ignore_Printf_Warnings == True:
        if "printf" in warn:
            printOut = False

    if Ignore_Include_Warnings == True:
        if "include" in warn:
            printOut = False
    if printOut == True:
        print(warn)


    #print(warn)

print("\nerrors: " + str(len(errors)))
for error in errors:
    print(error)
print("")
print("programmet bruker ")
print(List_8_bit[len(List_8_bit)-1][2])
print("bytes")
# print(RunProgramLength)
# print(len(List_8_bit))
# print(2*len(List_16_bit))