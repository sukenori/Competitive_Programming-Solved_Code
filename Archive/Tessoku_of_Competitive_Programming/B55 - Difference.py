q=int(input())
import bisect
l=[]
for i in range(q):
    qu,x=map(int,input().split())
    if qu==1: bisect.insort_left(l,x)
    if qu==2:
        j=bisect.bisect_left(l,x)
        k=bisect.bisect_right(l,x)
        if len(l)==0:
            print(-1)
            continue
        if j==k==0:
            print(l[0]-x)
            continue
        if j==k==len(l):
            print(x-l[-1])
            continue
        else:
            print(min(x-l[j-1],l[k]-x))