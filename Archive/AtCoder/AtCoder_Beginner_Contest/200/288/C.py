n,m=map(int,input().split())
g=[[] for i in range(n)]
p=[-1]*n; s=[1]*n
def root(i):
    while p[i]!=-1: i=p[i]
    return i
c=0
for i in range(m):
    a,b=map(int,input().split())
    ra=root(a-1); rb=root(b-1)
    if ra==rb: c+=1
    else:
        if s[ra]>=s[rb]:
            p[rb]=ra; s[ra]+=s[rb]
        else:
            p[ra]=rb; s[rb]+=s[ra]
print(c)