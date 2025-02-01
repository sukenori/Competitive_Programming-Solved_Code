n,x=map(int,input().split())
a=sorted(list(map(int,input().split())))
i=0
for ai in a:
    if x>=ai:
        x-=ai
        i+=1
print(i-(i==n and x>0))