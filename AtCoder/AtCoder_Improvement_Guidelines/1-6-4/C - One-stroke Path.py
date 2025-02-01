n,m=map(int,input().split())
ab=[sorted(list(map(int,input().split()))) for i in range(m)]
import itertools
p=[(1,)+_ for _ in itertools.permutations(range(2,n+1),n-1)]
print(sum(all(sorted(_i) in ab for _i in zip(_,_[1:])) for _ in p))