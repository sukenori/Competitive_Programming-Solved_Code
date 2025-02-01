n=int(input())
h=list(map(int,input().split()))
dp=[0,abs(h[1]-h[0])]
for i in range(2,n):
    dp.append(min(dp[i-2]+abs(h[i-2]-h[i]),dp[i-1]+abs(h[i-1]-h[i])))
p=[n]; i=n-1
while i!=0:
    if dp[i-1]+abs(h[i-1]-h[i])==dp[i]: i-=1
    else: i-=2
    p.append(i+1)
print(len(p))
print(*sorted(p))