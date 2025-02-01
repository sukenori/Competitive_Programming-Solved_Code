n,m=map(int,input().split())
s=[]
for i in range(m):
    s+=[list(map(int,input().split()))[1:]]
*p,=map(int,input().split())
print(sum(all(sum(i>>(_-1)&1 for _ in s[j])%2==p[j] for j in range(m)) for i in range(1<<n)))