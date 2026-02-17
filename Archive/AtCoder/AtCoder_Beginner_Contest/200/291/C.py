n=int(input())
s=input()
x=y=0
r=set()
r.add((x,y))
for _ in s:
    if _=="R": x+=1
    elif _=="L": x-=1
    elif _=="U": y+=1
    elif _=="D": y-=1
    if (x,y) in r:
        print("Yes")
        break
    r.add((x,y)) 
else:
    print("No")