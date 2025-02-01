h,w=map(int,input().split())
m=1000000007
a=h-1+w-1 if h!=1 or w!=1 else 1
for i in range(2,a):
    a=(a*i)%m
b=1
for i in range(2,h):
    b=(b*i)%m
for i in range(2,w):
    b=(b*i)%m
for _ in reversed(bin(m-2)[2:]):
    if _=="1": a=(a*b)%m
    b=(b*b)%m
print(a)