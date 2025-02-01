import sys
sys.setrecursionlimit(10**9)
for i in range(int(input())):
    n,d,k=map(int,input().split())
    a=[0]*n; a[0]=1; x=0
    for j in range(2,k+1):
        x=(x+d)%n
        while a[x]==1:
            x=(x+1)%n
        a[x]=1
    print(x)