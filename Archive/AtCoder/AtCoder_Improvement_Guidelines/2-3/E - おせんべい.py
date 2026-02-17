r,c=map(int,input().split())
a=[list(map(int,input().split())) for i in range(r)]
b=[[0]*c for i in range(r)]
m=0
for i in range(1<<r):
    for j in range(r):
        if i>>j&1==1:
            for k in range(c):
                b[j][k]=1-a[j][k]
        else:
            for k in range(c):
                b[j][k]=a[j][k]
    for j in range(c):
        if sum(b[k][j] for k in range(r))>r//2:
            for k in range(r):
                b[k][j]=1-b[k][j]
    m=max(m,r*c-sum(sum(b[j]) for j in range(r)))
print(m)