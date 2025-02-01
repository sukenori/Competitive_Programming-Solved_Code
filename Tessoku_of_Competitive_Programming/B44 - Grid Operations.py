n=int(input())
a=[list(map(int,input().split())) for i in range(n)]
l=[i for i in range(n)]
for i in range(int(input())):
    q,x,y=map(int,input().split())
    if q==1:
        l[x-1],l[y-1]=l[y-1],l[x-1]
    if q==2:
        print(a[l[x-1]][y-1])