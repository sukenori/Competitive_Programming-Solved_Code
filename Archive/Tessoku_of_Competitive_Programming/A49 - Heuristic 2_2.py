x=[0]*20
t=int(input())
b=[[] for i in range(t+1)]
b[0]=[[x.count(0),x,None,1]]
for i in range(1,t+1):
    p,q,r=map(int,input().split())
    for j,_ in enumerate(b[i-1]):
        x=_[1]
        xa=x[:p-1]+[x[p-1]+1]+x[p:q-1]+[x[q-1]+1]+x[q:r-1]+[x[r-1]+1]+x[r:]
        b[i].append([xa.count(0),xa,"A",j+1])
        xb=x[:p-1]+[x[p-1]-1]+x[p:q-1]+[x[q-1]-1]+x[q:r-1]+[x[r-1]-1]+x[r:]
        b[i].append([xb.count(0),xb,"B",j+1])
    b[i].sort(key=lambda x: x[0],reverse=True)
    del b[i][2000:]
s=""; j=1
for i in range(t,0,-1):
    s+=b[i][j-1][2]
    j=b[i][j-1][3]
for _ in reversed(s): print(_)