n,m=map(int,input().split())
s=[]
for i in range(m):
    k,*si=map(int,input().split()); s.append(si)
*p,=map(int,input().split())
print(sum(all(sum((i>>(_-1))&1 for _ in s[j])%2==p[j] for j in range(m)) for i in range(1<<n)))