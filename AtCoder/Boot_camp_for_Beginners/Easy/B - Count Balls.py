n,a,b=map(int,input().split())
r=n%(a+b)
print(n//(a+b)*a+r-(r-a)*(r>a))