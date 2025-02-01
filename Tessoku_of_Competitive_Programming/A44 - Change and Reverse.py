n,q=map(int,input().split())
a=[i for i in range(1,n+1)]
r=0
for i in range(q):
    q=input()
    if q[0]=="1":
        x,y=map(int,q[2:].split())
        if r==0: a[x-1]=y
        else: a[n-x]=y
    if q[0]=="2":
        r=1-r
    if q[0]=="3":
        x=int(q[2:])
        if r==0: print(a[x-1])
        else: print(a[n-x])