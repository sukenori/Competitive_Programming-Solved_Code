n,s,t=open(0); n=int(n)
i=0
while s[i:-1]!=t[:n-i]: i+=1
print(n+i)