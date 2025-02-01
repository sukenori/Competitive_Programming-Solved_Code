n,m=map(int,input().split())
k=[]
for i in range(m):
    u,v=map(int,input().split())
    if u in k: k.remove(u)
    else: k.append(u)
    if v in k: k.remove(v)
    else: k.append(v)
if len(k)==2: 
    print("Yes")
else:
    print("No")