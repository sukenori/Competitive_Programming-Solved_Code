n,r=map(int,input().split())
m=1000000007
a=1
for i in range(2,n+1):
    a=(a*i)%m
b=1
for i in range(2,r+1):
    b=(b*i)%m
for i in range(2,n-r+1):
    b=(b*i)%m
for _ in reversed(bin(m-2)[2:]):
    if _=="1": a=(a*b)%m
    b=(b*b)%m
print(a)