n,k=map(int,input().split())
a=[0]*n; b=[0]*n
for i in range(n):
    a[i],b[i]=map(int,input().split())
m=0
for i in range(1,101-k):
    for j in range(1,101-k):
        ab=0
        for l in range(n):
            if i<=a[l]<=i+k and j<=b[l]<=j+k: ab+=1
        m=max(m,ab)
print(m)