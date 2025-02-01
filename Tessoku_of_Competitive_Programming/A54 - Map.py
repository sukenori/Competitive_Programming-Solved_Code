q=int(input())
r={}
for i in range(q):
    qu=input().split()
    if qu[0]=="1": r[qu[1]]=int(qu[2])
    if qu[0]=="2": print(r[qu[1]])