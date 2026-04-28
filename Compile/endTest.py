# -*- coding: utf-8 -*-
"""
Created on Tue Apr 28 19:33:21 2026

@author: sonog
"""

End_List = []
End_Index= 0

def legtil(End_Index):
    End_List.append(End_Index)
    print("inn: " + str(End_Index))
    print(End_List)

def taut(End_Index):
    
    print("ut:  " + str(End_List[len(End_List)-1]))
    End_List.pop(len(End_List)-1)
    print(End_List)


End_Index+= 1
legtil(End_Index)

End_Index+= 1
legtil(End_Index)


taut(End_Index)

End_Index+= 1
legtil(End_Index)

taut(End_Index)
taut(End_Index)

End_Index+= 1
legtil(End_Index)

taut(End_Index)

