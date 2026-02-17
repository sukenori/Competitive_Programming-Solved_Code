n,*a=map(int,open(0).read().split())
c=1; m=0
for i,j in zip(a,a[1:]):
    if (j-i)*m<0: c+=1; m=0
    elif i!=j: m=j-i
print(c)