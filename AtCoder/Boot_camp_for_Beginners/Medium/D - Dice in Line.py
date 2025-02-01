n,k,*p=map(int,open(0).read().split())
s=[0]
for _ in p: s+=[s[-1]+_]
print((max(s[i]-s[i-k] for i in range(k,n+1))+k)/2)