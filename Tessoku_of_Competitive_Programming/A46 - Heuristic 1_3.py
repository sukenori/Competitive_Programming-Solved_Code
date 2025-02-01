n=int(input())
x=[None]*(n+1); y=[None]*(n+1);
for i in range(1,n+1):
    x[i],y[i]=map(int,input().split())
p=[0]
for i in range(1,n+1): p.append(i)
p.append(1)
import math
def dis(p):
    s=0
    for i in range(1,n+1):
        s+=math.sqrt((x[p[i+1]]-x[p[i]])**2+(y[p[i+1]]-y[p[i]])**2)
    return s
d=dis(p)
import random
for i in range(200000):
    l=random.randint(2,n-1)
    r=random.randint(l+1,n)
    np=p[:l]+p[r:l-1:-1]+p[r+1:]
    nd=dis(np)
    t=30-(i/199999)*28
    if nd<=d or math.exp((d-nd)/t)>random.random():
        p=np; d=nd
for _ in p[1:]:
    print(_)