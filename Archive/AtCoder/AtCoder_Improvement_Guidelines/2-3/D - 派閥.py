n,m=map(int,input().split())
xy=[]
for i in range(m): xy+=[list(map(int,input().split()))]
a=0
for i in range(1,1<<n):
    s={j+1 for j in range(n) if i>>j&1}; l=len(s)
    if sum(x in s and y in s for x,y in xy)==(l*(l-1))//2: a=max(a,l)
print(a)