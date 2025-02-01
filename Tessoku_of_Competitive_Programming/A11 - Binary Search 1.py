n,x=map(int,input().split())
a=list(map(int,input().split()))
l=0; r=n-1
while True:
    m=-(-(l+r)//2)
    if a[m]==x:
        print(m+1)
        break
    if a[m]<x: l=m+1
    if a[m]>x: r=m-1