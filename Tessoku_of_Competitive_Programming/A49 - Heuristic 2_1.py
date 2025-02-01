x=[0]*21
t=int(input())
p=[0]*t; q=[0]*t; r=[0]*t
for i in range(t):
    p[i],q[i],r[i]=map(int,input().split())
def s(x):
    return x.count(0)
for i in range(t):
    xa=x.copy()
    xa[p[i]]+=1; xa[q[i]]+=1; xa[r[i]]+=1
    xb=x.copy()
    xb[p[i]]-=1; xb[q[i]]-=1; xb[r[i]]-=1
    f=(x[p[i]]>=0)+(x[q[i]]>=0)+(x[r[i]]>=0)
    if s(xa)>s(x) or (s(xa)==s(x) and f<2):
        x=xa.copy()
        print("A")
    else:
        x=xb.copy()
        print("B")