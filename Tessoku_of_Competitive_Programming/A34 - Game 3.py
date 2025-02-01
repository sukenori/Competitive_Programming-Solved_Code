n,x,y=map(int,input().split())
a=list(map(int,input().split()))
g=[]
for i in range(max(a)+1):
    for j in range(3):
        if (i-x<0 or j!=g[i-x]) and (i-y<0 or j!=g[i-y]):
            g.append(j)
            break
xg=0
for i in a: xg^=g[i]
print(["First","Second"][xg==0])