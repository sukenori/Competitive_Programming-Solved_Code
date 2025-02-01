s=[*zip(*[*open(0)][1:])][:-1]
dp=[0]*3; r=0,1,2
for _ in s:
    dp=[min(dp[j] for j in r if j!=i)+5-_.count("RBW"[i]) for i in r]
print(min(dp))