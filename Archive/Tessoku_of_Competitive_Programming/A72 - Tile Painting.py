h,w,k=map(int,input().split())
c=[list(map(int,list(input().replace("#","1").replace(".","0")))) for i in range(h)]
for i in range(k):
    c=sorted(c,key=lambda x:sum(x))
    tc=sorted(list(zip(*c)),key=lambda x:sum(x))
    if sum(c[0])>=sum(tc[0]):
        for j in range(w): c[0][j]=1
    else:
        for j in range(h): c[j][0]=1
print(sum([sum(c[i]) for i in range(h)]))