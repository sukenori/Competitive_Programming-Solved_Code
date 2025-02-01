n=int(input())
*a,=map(int,input().split())
q=int(input())
*m,=map(int,input().split())
s={sum(a[j]*((i>>j)&1) for j in range(n)) for i in range(1<<n)}
for mi in m:
    print(["no","yes"][mi in s])