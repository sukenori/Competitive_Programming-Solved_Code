n,k=map(int,input().split())
a=list(map(int,input().split()))
af=a[:n//2]
ab=a[n//2:]
import itertools
p=q=[]
for i in range(len(af)+1):
    p+=list(sum(_) for _ in itertools.combinations(af,i))
for i in range(len(ab)+1):
    q+=list(sum(_) for _ in itertools.combinations(ab,i))
q.sort()
import bisect
for _ in p:
    bs=bisect.bisect_left(q,k-_)
    if bs<len(q) and _+q[bs]==k:
        print("Yes")
        exit()
print("No")