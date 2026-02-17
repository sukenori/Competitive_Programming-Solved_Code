n=int(input())
x=list(map(int,input().split()))
p=round(sum(x)/n)
print(sum((xi-p)**2 for xi in x))