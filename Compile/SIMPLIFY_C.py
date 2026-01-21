C_Filename = "test"
Simple_C_Filename = "Simple_C_output" 
Enable_Halt_At_End = True #if true adds a HALT at the end of the program
SpaceCode_var = 2  #space between code and variables in memory
#------------------------------------------------------------------------
#pulls out text from file:

import os
Simple_C_Filename += ".c"
C_Filename += ".c"
script_dir = os.path.dirname(os.path.abspath(__file__))
C_Filename = os.path.join(script_dir, C_Filename)
Simple_C_Filename = os.path.join(script_dir, Simple_C_Filename)

file = open(C_Filename,'r')

load_lines = [] 
for line in file:
    load_lines.append(line)
    
file.close() 


Double_Space_Operators = ["--","++","==","+=","-=","*=","/=","**", "//","&&","||","<<",">>"]
Single_Space_Operators = ['-','+','*','/','=',';',',','{','}','(',')','<','>','[',']','#']

New_Lines = []


for line in load_lines:
    temp_line = ""
    LineLength = len(line)
    for i in range(0, LineLength-1):
        if i != LineLength:
            temp_line += line[i]
    New_Lines.append(" " + temp_line + "   " + "\n")

S_C_Lines = []

for line in New_Lines:
    newline = ""
    LineLength = len(line)
    if LineLength > 0:
        for i in range(LineLength):
            isDouble = False
            found = False
            #print("---- " + line[i] + " ----")

            for j in range(len(Single_Space_Operators)):
                if line[i] == Single_Space_Operators[j]:
                     # single: " + line[i] + " " + Single_Space_Operators[j])
                    found = True
            if found == True:
                #print("match")

                if i>0:
                    #print("_>'" + line[i-1] + line[i] + "'")
                    if (line[i-1] + line[i]) in Double_Space_Operators:
                        newline += line[i] + " "
                        isDouble = True
                        #print("før : " + " " + str(LineLength) + " " + str(i) + " " + line[i])
                if i < LineLength-1:
                    if (line[i] + line[i+1]) in Double_Space_Operators:
                        newline +=  " " + line[i]
                        isDouble = True
                        #print("etter : " + " " + str(LineLength) + " " + str(i) + " " + line[i])
                if not isDouble:
                    newline += " " + line[i] + " "
                    #print("singel : " + " " + str(LineLength) + " " + str(i) + " " + line[i])
            else:
                newline += line[i]
                #print("ingen : " + " " + str(LineLength) + " " + str(i) + " " + line[i])
                #if line[i] == "\n":
                    #print("newline")
    #print(line)
    S_C_Lines.append(newline)
    #print("'" + newline + "'")
    #print("___________________________")
    

file = open(Simple_C_Filename,'w')
for line in S_C_Lines:
    print(line)
    file.write(line)
file.close()