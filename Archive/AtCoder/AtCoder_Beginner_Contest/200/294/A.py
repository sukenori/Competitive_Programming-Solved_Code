n=int(input())
a=list(map(int,input().split()))
l=[]
for _ in a:
    if _%2==0:
        l+=[_]
print(*l)