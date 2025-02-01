n,s=map(int,input().split())
a=list(map(int,input().split()))
dp=[[True]+[False]*s]
for _ in a:
    dp+=[[dp[-1][i] or (i-_>=0 and dp[-1][i-_]==1) for i in range(s+1)]]
print(["No","Yes"][dp[n][s]])