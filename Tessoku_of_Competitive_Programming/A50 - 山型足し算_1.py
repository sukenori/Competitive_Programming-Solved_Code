n=100
a=[list(map(int,input().split())) for i in range(n)]
b=[[0]*n for i in range(n)]
def op(b,x,y,h):
    for i in range(y-h+1,y+h):
        for j in range(x-h+1,x+h):
            if 0<=i<=n-1 and 0<=j<=n-1:
                b[i][j]+=max(0,h-abs(x-i)-abs(y-j))
q=1000
print(q)
import random
h=1
for i in range(q):    
    x=random.randint(0,n-1)
    y=random.randint(0,n-1)
    print(x,y,h)
    op(b,x,y,h)