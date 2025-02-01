n,*ab=map(int,open(0).read().split())
a=ab[::2]; b=ab[1::2]
s=sorted(a)[n//2]; g=sorted(b)[n//2]
print(sum(abs(s-a[i])+b[i]-a[i]+abs(b[i]-g) for i in range(n)))