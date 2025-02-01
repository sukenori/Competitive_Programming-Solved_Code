a,b=map(int,input().split())
s=1
for _ in reversed(bin(b)[2:]):
    if _=="1": s=(s*a)%(10**9+7)
    a=(a*a)%(10**9+7)
print(s)