n,*hs=map(int,open(0).read().split())
xl=0; xr=1000000000+1000000000*100000
while xr-xl>1:
    x=(xl+xr)//2
    t=sorted([(x-hs[i*2])/hs[i*2+1] for i in range(n)])
    if all(t[i]>=i for i in range(n)): xr=x
    else: xl=x
print(xr)