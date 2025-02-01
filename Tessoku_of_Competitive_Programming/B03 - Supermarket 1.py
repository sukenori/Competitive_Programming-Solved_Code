n=int(input())
a=list(map(int,input().split()))
c=0
for i in range(n):
    for j in range(n):
        if j==i: continue
        for k in range(n):
            if k==i or k==j: continue
            if a[i]+a[j]+a[k]==1000: c=1
print(["No","Yes"][c])