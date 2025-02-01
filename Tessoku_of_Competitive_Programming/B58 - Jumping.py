n,l,r=map(int,input().split())
s=1
while s<n: s*=2
st=[0]*(s*2)
for i,_ in enumerate(input().split()):
    st[s-1+i]=int(_)
for i in range(s-1,0,-1):
    st[i-1]=st[i*2-1]+st[i*2]
def l(i):
    li=st[s-1+i]+l; ri=st[s-1+i]+r
    

dp=[[n+1]*(n) for i in range(n)]
dp[0][0]=0
for i in range(n):
    for j in range(n):
        