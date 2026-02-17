n=int(input())
d=[int(_) for _ in input().split()]
d.sort()
print(d[int(n/2)]-d[int(n/2-1)])