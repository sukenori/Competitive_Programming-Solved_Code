n,s=map(int,input().split())
a=list(map(int,input().split()))
dp=[[True]+[False]*s]
for _ in a:
    dp+=[[dp[-1][i] or (i-_>=0 and dp[-1][i-_]==1) for i in range(s+1)]]
if dp[n][s]==False:
    print(-1)
    exit()
p=[]; j=s
for i in reversed(range(n)):
    if j-a[i]>=0 and dp[i][j-a[i]]==True:
        j-=a[i]
        p+=[i+1]
print(len(p))
print(*sorted(p))