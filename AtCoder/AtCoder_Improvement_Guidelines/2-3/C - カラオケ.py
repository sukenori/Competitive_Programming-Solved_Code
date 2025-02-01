n,m=map(int,input().split())
a=[list(map(int,input().split())) for i in range(n)]
import itertools
print(max(sum(max(a[j][i[0]],a[j][i[1]]) for j in range(n)) for i in itertools.combinations(range(m),2)))