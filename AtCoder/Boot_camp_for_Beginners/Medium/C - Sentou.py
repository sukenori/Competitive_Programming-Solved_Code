n,t=map(int,input().split())
ti=list(map(int,input().split()))
print(sum(min(ti[i]-ti[i-1],t) for i in range(1,n))+t)