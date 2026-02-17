n,k=map(int,input().split())
a=set(list(map(int,input().split())))
for i in range(k+1):
    if not i in a: break
print(i)