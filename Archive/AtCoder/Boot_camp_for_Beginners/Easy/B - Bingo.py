a=[list(map(int,input().split())) for _ in range(3)]
n=int(input())
b=[int(input()) for _ in range(n)]
c=[[0,0,0] for _ in range(3)]
for i in range(3):
    for j in range(3):
        if a[i][j] in b:
            c[i][j]=1
cr=list(sum(_) for _ in c)
cc=list(sum(_) for _ in zip(*c))
cxl=cxr=0
for i in range(3):
    if c[i][i]==1:
        cxl+=1
    if c[2-i][i]==1:
        cxr+=1
if 3 in cr or 3 in cc or cxl==3 or cxr==3:
    print("Yes")
else:
    print("No")