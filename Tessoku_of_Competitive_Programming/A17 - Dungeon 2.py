n=int(input())
a=[0]+list(map(int,input().split()))
b=[0,0]+list(map(int,input().split()))
dp=[0,a[1]]
for i in range(2,n):
    dp.append(min(dp[i-2]+b[i],dp[i-1]+a[i]))
p=[n]; i=n-1
while i!=0:
    if dp[i-1]+a[i]==dp[i]: i-=1
    else: i-=2
    p.append(i+1)
print(len(p))
print(*sorted(p))