n=int(input())
g=[input().split()[2:] for i in range(n)]
q=[0]; d=[0]+[-1]*(n-1)
while q:
    i=q.pop(0)
    for _ in g[i]:
        j=int(_)-1
        if d[j]<0:
            d[j]=d[i]+1
            q.append(j)
[print(i+1,d[i]) for i in range(n)]