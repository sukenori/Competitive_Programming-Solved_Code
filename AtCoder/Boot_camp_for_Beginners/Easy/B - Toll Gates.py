n,m,x=map(int,input().split())
a=[int(_) for _ in input().split()]
a.append(x)
a.sort()
print(min(a.index(x),m-a.index(x)))