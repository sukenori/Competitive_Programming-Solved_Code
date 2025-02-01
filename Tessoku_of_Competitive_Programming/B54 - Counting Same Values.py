n=int(input())
c={}
for i in range(n):
    a=int(input())
    if not a in c: c[a]=1
    else: c[a]+=1
s=0
for _ in c:
    s+=c[_]*(c[_]-1)//2
print(s)