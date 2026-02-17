n=int(input())
m=998244353
a,b=map(int,input().split())
dpa=1; dpb=1
for i in range(1,n):
    xa,xb=a,b; xdpa,xdpb=dpa,dpb    
    a,b=map(int,input().split())
    dpa=(xdpa*(xa!=a)+xdpb*(xb!=a))%m
    dpb=(xdpa*(xa!=b)+xdpb*(xb!=b))%m
print((dpa+dpb)%m)