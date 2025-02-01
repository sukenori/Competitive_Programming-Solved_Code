n=int(input())
p=tuple(map(int,input().split()))
q=tuple(map(int,input().split()))
import itertools
np=list(itertools.permutations(range(1,n+1)))
print(abs(np.index(p)-np.index(q)))