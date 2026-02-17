n=int(input())
import itertools
s=sorted(list(itertools.permutations(range(1,n+1),n)))
print(abs(s.index(tuple(map(int,input().split())))-s.index(tuple(list(map(int,input().split()))))))