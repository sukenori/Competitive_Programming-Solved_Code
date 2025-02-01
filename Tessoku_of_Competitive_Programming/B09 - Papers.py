xy=[[0]*1501 for i in range(1501)]
for i in range(int(input())):
    a,b,c,d=map(int,input().split())
    xy[a][b]+=1; xy[c][d]+=1
    xy[a][d]-=1; xy[c][b]-=1
for i in range(1500):
    for j in range(1,1500):
        xy[i][j]+=xy[i][j-1]
for i in range(1500):
    for j in range(1,1500):
        xy[j][i]+=xy[j-1][i]
print(1500*1500-sum([xy[i][:1500].count(0) for i in range(1500)]))