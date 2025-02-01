n=int(input())
a=[int(input()) for i in range(n)]
sa=sorted(a)
for _ in a: print(sa[-1-(_==sa[-1])])