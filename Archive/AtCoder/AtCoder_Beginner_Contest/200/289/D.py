n=int(input())
a=sorted(list(map(int,input().split())))
m=int(input())
b=list(map(int,input().split()))
x=int(input())
d=[[0]*(100) for i in range(x//a[0]+2)]
d[0][0]=1
for _ in b:
    for i in range(x//a[0]+2):
        d[i][_]=-(10**6)
for i in range(x//a[0]+1):
    for j in range(90):
        d[i+1][j]+=1
        if d[i][j]>=1:
            for l in a:
                d[i+1][j+l]+=1
if d[-1][x]>=1: print("Yes")
else: print("No")