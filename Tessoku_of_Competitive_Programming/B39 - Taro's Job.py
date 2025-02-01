n,d=map(int,input().split())
xy=sorted([list(map(int,input().split())) for i in range(n)],key=lambda x:x[1],reverse=True)
y=[0]*(d+1)
for i in range(n):
    for j in range(xy[i][0],d+1):
        if y[j]==0:
            y[j]=xy[i][1]
            break
print(sum(y))