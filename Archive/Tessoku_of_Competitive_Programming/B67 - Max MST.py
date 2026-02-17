n,m=map(int,input().split())
abc=sorted([list(map(int,input().split())) for i in range(m)],key=lambda x: x[2])[::-1]
p=[-1]*n; s=[1]*n
def root(i):
    while p[i]!=-1: i=p[i]
    return i
l=0
for a,b,c in abc:
    ra=root(a-1); rb=root(b-1)
    if ra!=rb:
        if s[ra]>=s[rb]: p[rb]=ra; s[ra]+=s[rb]
        else: p[ra]=rb; s[rb]+=s[ra]
        l+=c
print(l)