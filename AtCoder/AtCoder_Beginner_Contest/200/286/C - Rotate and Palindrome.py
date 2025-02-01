n,a,b=map(int,input().split())
s=input()*2
c=[0]*(n//2)
for i in range(n//2):
    c[i]+=a*i
    for j in range(n//2):
        if s[i+j]!=s[i+n-j-1]: c[i]+=b
print(min(c))