n=int(input())
v=[int(_) for _ in input().split()]
v.sort()
print(v[0]/2**(n-1)+sum(v[i]/2**(n-i) for i in range(1,n)))