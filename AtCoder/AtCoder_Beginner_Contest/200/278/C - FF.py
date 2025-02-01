n,q=map(int,input().split())
ff=set()
for i in range(q):
    t,a,b=map(int,input().split())
    if t==1:
        ff.add((a,b))
    if t==2:
        ff.discard((a,b))
    if t==3:
        if (a,b) in ff and (b,a) in ff:
            print("Yes")
        else:
            print("No")