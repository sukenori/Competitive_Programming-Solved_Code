n,m=map(int,input().split())
g=[[] for i in range(n+1)]
for i in range(m):
    a,b=map(int,input().split())
    g[a].append(b); g[b].append(a)
for i in range(n):
    print(str(i+1)+":","{"+", ".join(list(map(str,g[i+1])))+"}")