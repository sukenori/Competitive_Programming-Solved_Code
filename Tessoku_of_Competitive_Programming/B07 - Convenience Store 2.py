t,n=[int(input()) for i in range(2)]
g=[0]*(t+2)
for i in range(n):
    l,r=map(int,input().split())
    g[l+1]+=1; g[r+1]-=1
for i in range(1,t+1):
    g[i]+=g[i-1]
    print(g[i])