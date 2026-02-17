n,m=map(int,input().split())
r=[list(map(int,input().split())) for i in range(m)]
q=int(input())
qu=[list(map(int,input().split())) for i in range(q)]
l=[1]*m
for i in range(q):
    if qu[i][0]==1:
        l[qu[i][1]-1]=0
        qu[i]=[1]+r[qu[i][1]-1]
p=[-1]*n; s=[1]*n
def root(i):
    while p[i]!=-1: i=p[i]
    return i
def union(a,b):
    ra=root(a-1); rb=root(b-1)    
    if ra!=rb:
        if s[ra]>=s[rb]: p[rb]=ra; s[ra]+=s[rb]
        else: p[ra]=rb; s[rb]+=s[ra]
for i in range(m):
    if l[i]==1:
        a,b=r[i]; union(a,b)
ans=[]
for qu,a,b in qu[::-1]:
    if qu==1:
        union(a,b)
    if qu==2:
        if root(a-1)==root(b-1): ans.append("Yes")
        else: ans.append("No")
[print(_) for _ in ans[::-1]]