Type_rotate = "2N7002"

prev_angle = "180.0"
to_angle = "0.0"

whole_File = []

import csv
with open('C:\Bachlor\PCB_S\REG8bit-SMD-V3.0\jlcpcb\production_files\CPL-REG8bit-SMD-V3.0.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=',', quotechar='|')
    for row in spamreader:
        #Ny_File = "'"
        print(row)
        #for element in row:
         #   nElements = element.strip()
            #for type in element.split(','):
                #if Type_rotate in type:
                    #Ny_File += element.replace(prev_angle, to_angle) + "'"
                    #print(Ny_File)
                    #print(element.replace(prev_angle, to_angle))
          #  whole_File.append(nElements.replace(prev_angle, to_angle))
csvfile.close()


for line in whole_File:
    print(line)