n,k=map(int,input().split())
a=list(map(int,input().split()))
r=[]; t=[]
for i in range(n):
    ri=0; ti=0
    for j in range(i+1):
        if a[i]>a[j]: ti+=1
    for j in range(i,n):
        if a[i]>a[j]: ti+=1; ri+=1
    r.append(ri); t.append(ti)
m=10**9+7
s=0
sk=((1+k-1)*(k-1)//2)%m
for i in range(n):
    s+=(r[i]*k+t[i]*sk)%m
print(s%m)