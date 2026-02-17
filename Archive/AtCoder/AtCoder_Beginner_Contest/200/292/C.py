n=int(input())
import math
def y(i):
    p=set()
    for j in range(1,int(math.sqrt(i))+1):
        if i%j==0: 
            p.add(j)
            p.add(i//j)
    return len(p)//2*2+len(p)%2
cc=0
for i in range(1,n):
    cc+=y(i)*y(n-i)
print(cc)
