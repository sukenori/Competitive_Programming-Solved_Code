n,k,*a=map(int,open(0).read().split())
s=[]
for i in range(1<<n-1):
    if sum(i>>j&1 for j in range(n-1))<k-1: continue
    si=0; aj=a[0]
    for j in range(1,n):
        if i>>j-1&1==1:
            aj=max(aj+1,max(a[:j])+1,a[j]); si+=aj-a[j]
    s+=[si]
print(min(s))