n=int(input())
xy=[list(map(int,input().split())) for i in range(n)]
xy.sort(key=lambda x: x[1], reverse=True)
xy.sort(key=lambda x: x[0])
y=[_[1] for _ in xy]
ly=[]
import bisect
for i in range(n):
    d=bisect.bisect_left(ly,y[i])
    if d==len(ly): ly.append(y[i])
    else: ly[d]=y[i]
print(len(ly))