n=int(input())
p=tuple(map(int,input().split()))
q=tuple(map(int,input().split()))
import itertools
s=sorted(list(itertools.permutations(range(1,n+1))))
print(abs(s.index(p)-s.index(q)))