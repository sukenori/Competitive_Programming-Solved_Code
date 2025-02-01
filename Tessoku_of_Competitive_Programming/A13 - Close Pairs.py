n,k=map(int,input().split())
a=list(map(int,input().split()))
r=sr=0
for i in range(n):
    sr+=r-i
    while True:
        if r<n-1 and a[r+1]-a[i]<=k:
            r+=1; sr+=1
        else: break
print(sr)