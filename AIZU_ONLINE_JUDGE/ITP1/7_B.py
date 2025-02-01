while True:
    n,x=map(int,input().split())
    if n==x==0: break
    import itertools
    s=[sum(_) for _ in itertools.combinations(list(range(1,n+1)),3)]
    print(s.count(x))