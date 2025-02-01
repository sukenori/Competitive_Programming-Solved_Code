n,k=map(int,input().split())
a=list(map(int,input().split()))
q=int(input())
for i in range(q):
    l,r=map(int,input().split())
    x=a[l-1:r]
    for j in range(r-l+1-k+1):
        p=x[j]
        if p!=0:
            for l in range(k):
                x[j+l]-=p
    if set(x)=={0}: print("Yes")
    else: print("No")