n,m=map(int,input().split())
ab=[list(map(int,input().split()))+[_] for _ in range(n)]
cd=[list(map(int,input().split()))+[_] for _ in range(m)]
c=[0]*n
for i in ab:
    l=[]
    for j in cd:
        l.append([abs(j[0]-i[0])+abs(j[1]-i[1]),j[2]+1])
    c[i[2]]=sorted(l)[0][1]
print("\n".join(str(_) for _ in c))