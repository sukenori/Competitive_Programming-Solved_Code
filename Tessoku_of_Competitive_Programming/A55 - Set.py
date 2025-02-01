q=int(input())
import bisect
l=[]
for i in range(q):
    qu,x=map(int,input().split())
    if qu==1: bisect.insort_left(l,x)
    if qu==2: l.remove(x)
    if qu==3:
        j=bisect.bisect_left(l,x)
        print(l[j]) if j<len(l) else print(-1)