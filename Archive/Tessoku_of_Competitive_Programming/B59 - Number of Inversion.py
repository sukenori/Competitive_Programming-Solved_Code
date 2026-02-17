n=int(input())
a=list(map(int,input().split()))
s=1
while s<n: s*=2
d=[0]*(s*2)
def dsum(l,r,li,ri,j):
    if li>=l and ri<=r: return d[j]
    if li>=r or ri<=l: return 0
    m=(li+ri)//2
    return dsum(l,r,li,m,j*2)+dsum(l,r,m,ri,j*2+1)
c=0
for i in range(n):
    c+=dsum(a[i]+1,n+1,1,s+1,1)
    p=a[i]+s-1
    while p>=1:
        d[p]+=1
        p//=2
print(c)