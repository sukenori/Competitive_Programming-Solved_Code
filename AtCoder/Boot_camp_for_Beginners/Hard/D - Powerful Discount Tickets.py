n,m=map(int,input().split())
a=sorted(list(map(int,input().split())))
import bisect
for i in range(m):
    a[-1]/=2
    bisect.insort_left(a,a[-1])
    a.pop(-1)
s=0
for _ in a:
    s+=int(_)
print(s)