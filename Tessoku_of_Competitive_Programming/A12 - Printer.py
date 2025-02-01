n,k=map(int,input().split())
a=list(map(int,input().split()))
l=1; r=10**9
while True:
    m=-(-(l+r)//2)
    s=sum([m//a[i] for i in range(n)])
    if s<k: l=m
    if s>=k: r=m
    if r-l==1:
        print(r)
        break