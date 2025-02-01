q=int(input())
l=[]
for i in range(q):
    qu=input()
    if qu[0]=="1": l.append(qu[2:])
    if qu[0]=="2": print(l[0])
    if qu[0]=="3": l.pop(0)