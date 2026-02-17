n=int(input())
x=[None]*(n+1); y=[None]*(n+1);
for i in range(1,n+1):
    x[i],y[i]=map(int,input().split())
i=1; p=[0,1]
while len(p)<n+1:
    l=[1000*2**0.5]*(n+1)
    for j in range(1,n+1):
        if not j in p:
            l[j]=((x[j]-x[i])**2+(y[j]-y[i])**2)**0.5
    i=l.index(min(l))
    p.append(i)
p.append(1)
for _ in p[1:]:
    print(_)