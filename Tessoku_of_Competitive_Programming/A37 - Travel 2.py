n,m,b=map(int,input().split())
a=list(map(int,input().split()))
c=list(map(int,input().split()))
print(sum(a)*m+b*n*m+sum(c)*n)