n=int(input())
xy=[[0]*1501 for i in range(1501)]
for i in range(n):
    x,y=map(int,input().split())
    xy[x][y]+=1
for i in range(1,1501):
    for j in range(1,1501):
        xy[i][j]+=xy[i][j-1]
for i in range(1,1501):
    for j in range(1,1501):
        xy[j][i]+=xy[j-1][i]
q=int(input())
for i in range(q):
    a,b,c,d=map(int,input().split())
    print(xy[c][d]-xy[c][b-1]-xy[a-1][d]+xy[a-1][b-1])