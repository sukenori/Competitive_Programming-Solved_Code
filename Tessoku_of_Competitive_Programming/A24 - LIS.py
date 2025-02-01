n=int(input())
a=[0]+list(map(int,input().split()))
dp=[0]; l=[500001]*n
import bisect
for i in range(1,n+1):
    dp.append(bisect.bisect_left(l,a[i])+1)
    l[dp[i]-1]=a[i]
print(max(dp))