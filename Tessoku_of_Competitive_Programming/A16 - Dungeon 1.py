n=int(input())
a=[0]+list(map(int,input().split()))
b=[0,0]+list(map(int,input().split()))
dp=[0,a[1]]
for i in range(2,n):
    dp.append(min(dp[i-2]+b[i],dp[i-1]+a[i]))
print(dp[n-1])