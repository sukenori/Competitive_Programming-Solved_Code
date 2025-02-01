d,n=map(int,input().split())
s=[0]+[24]*d
for i in range(n):
    l,r,h=map(int,input().split())
    for j in range(l,r+1): s[j]=min(s[j],h)
print(sum(s))