n,q=map(int,input().split())
s=1
while s<n: s*=2
d=[0]*(s*2)
def dsum(l,r,li,ri,j):
    if li>=l and ri<=r: return d[j]
    if li>=r or ri<=l: return 0
    m=(li+ri)//2
    return dsum(l,r,li,m,j*2)+dsum(l,r,m,ri,j*2+1)
for i in range(q):
    qu=list(map(int,input().split()))
    if qu[0]==1:
        p=qu[1]+s-1
        d[p]=qu[2]
        while p>1:
            d[p//2]=d[p]+d[p+(p%2==0)-(p%2==1)]
            p//=2
    if qu[0]==2:
        print(dsum(qu[1],qu[2],1,s+1,1))