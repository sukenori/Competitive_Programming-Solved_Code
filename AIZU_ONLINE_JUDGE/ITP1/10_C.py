while True:
    n=int(input())
    if n==0: break
    s=list(map(int,input().split()))
    print("{:.8f}".format((sum([(_-sum(s)/n)**2 for _ in s])/n)**0.5))