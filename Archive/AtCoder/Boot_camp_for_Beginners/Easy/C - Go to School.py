n=int(input())
a=[int(_) for _ in input().split()]
a2=[[a[i],i+1] for i in range(n)]
a2.sort()
print(" ".join(str(row[1]) for row in a2))