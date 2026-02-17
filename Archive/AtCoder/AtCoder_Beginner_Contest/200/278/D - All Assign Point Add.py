n=int(input())
a=list(map(int,input().split()))
d=set(range(n))
b=0
for i in range(int(input())):
    q,*x=map(int,input().split())
    if q==1:
        b=x[0]
        for _ in d: a[_]=0
        d=set()
    if q==2:
        a[x[0]-1]+=x[1]
        d.add(x[0]-1)
    if q==3: print(b+a[x[0]-1])