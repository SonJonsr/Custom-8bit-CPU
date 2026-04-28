# -*- coding: utf-8 -*-
"""
Created on Tue Apr 28 19:33:21 2026

@author: sonog
"""

End_List = []
Index = 0

def legtil(Index):
    End_List.append(Index)
    print("inn: " + str(Index))
    print(End_List)

def taut(Index):
    
    print("ut:  " + str(End_List[len(End_List)-1]))
    End_List.pop(len(End_List)-1)
    print(End_List)



Index += 1
legtil(Index)

Index += 1
legtil(Index)


taut(Index)

Index += 1
legtil(Index)

taut(Index)
taut(Index)

Index += 1
legtil(Index)

taut(Index)

