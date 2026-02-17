n,m=map(int,input().split())
a=list(map(int,input().split()))
bc=sorted([list(map(int,input().split()))[::-1] for i in range(m)])[::-1]
[a.extend([c]*b) for c,b in bc if len(a)<=n*2]
print(sum(sorted(a)[-n:]))