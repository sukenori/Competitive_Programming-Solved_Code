print(10**9+1)
a=[]
for i in range(10**9+1):
    a.append(i+2)
print(*a,flush=True)
b=list(map(int,input().split()))
print(b[0]-1,flush=True)