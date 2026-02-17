n,q=map(int,input().split())
c=[0]*n
for i in range(q):
    qu,x=map(int,input().split())
    if qu==1:
        c[x-1]+=1
    if qu==2:
        c[x-1]=2
    if qu==3:
        print(["No","Yes"][c[x-1]==2])