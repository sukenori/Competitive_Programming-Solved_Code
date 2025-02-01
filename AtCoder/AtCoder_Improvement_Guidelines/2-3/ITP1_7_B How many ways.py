import itertools
while True:
    n,x=map(int,input().split())
    if n==x==0: break
    print(sum(sum(_)==x for _ in itertools.combinations(range(1,n+1),3)))