n,k,*a=map(int,open(0).read().split())
c=[0]*(n+1)
for _ in a: c[_]+=1
print(sum(sorted(c)[:-k]))