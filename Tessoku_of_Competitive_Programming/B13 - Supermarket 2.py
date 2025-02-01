n,k=map(int,input().split())
a=list(map(int,input().split()))
ca=[0]
for i in range(n):
    ca.append(ca[i]+a[i])
r=1; sr=0
for i in range(1,n+1):
    if r<i: r=i
    sr+=r-i
    while True:
        if r<n+1 and ca[r]-ca[i-1]<=k:
            r+=1; sr+=1
        else: break
print(sr)