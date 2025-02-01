n=int(input())
a=list(map(int,input().split()))
a.sort()
import bisect
for i in range(int(input())):
    x=int(input())
    print(bisect.bisect_left(a,x))