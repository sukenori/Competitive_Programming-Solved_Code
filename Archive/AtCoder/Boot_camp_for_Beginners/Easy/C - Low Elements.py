n=int(input())
p=list(map(int,input().split()))
m=p[0]; c=0
for _ in p:
    if _<=m:
        m=_; c+=1
print(c)