n=int(input())
a=list(map(int,input().split()))
dp=[0]*n
for i,_ in enumerate(a[::-1]):
    dp[_-1]+=dp[n-1-i]+1
print(*dp)