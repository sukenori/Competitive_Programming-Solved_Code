n,*p=map(int,open(0).read().split())
import itertools
l=0; c=0
for i in itertools.permutations(range(n),n):
    for j in range(n-1):
            l+=((p[i[j+1]*2]-p[i[j]*2])**2+(p[i[j+1]*2+1]-p[i[j]*2+1])**2)**0.5
    c+=1
print(l/c)