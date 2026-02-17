n=int(input())
s=list(map(int,input().split()))
q=int(input())
t=list(map(int,input().split()))
import bisect
c=0
for _ in t:
    i=bisect.bisect_left(s,_)
    if i<n and s[i]==_: c+=1
print(c)