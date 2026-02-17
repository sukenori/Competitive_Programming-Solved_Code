n=int(input())
xy=[list(map(int,input().split())) for i in range(n)]
def d(i,j): return ((xy[i][0]-xy[j][0])**2+(xy[i][1]-xy[j][1])**2)**0.5
import itertools; import math
print(sum(d(_[i],_[i+1]) for i in range(n-1) for _ in itertools.permutations(range(n),n))/math.factorial(n))