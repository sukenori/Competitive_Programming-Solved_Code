a,b=map(int,input().split())
s=1
for _ in reversed(bin(b)[2:]):
    if _=="1": s=(s*a)%1000000007
    a=(a*a)%1000000007
print(s)