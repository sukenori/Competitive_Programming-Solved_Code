q=int(input())
d=[]
for i in range(q):
    qu=input()
    if qu[0]=="1": d.append(qu[2:])
    if qu[0]=="2": print(d[-1])
    if qu[0]=="3": d.pop()