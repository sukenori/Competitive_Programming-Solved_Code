n,m=map(int,input().split())
a=list(map(int,input().split()))
b=list(map(int,input().split()))
c=sorted(a+b)
import bisect
e=[]
for i in a:
    k=bisect.bisect_left(c,i)+1
    e+=[k]
print(*e)
f=[]
for i in b:
    l=bisect.bisect_left(c,i)+1
    f+=[l]
print(*f)