n,m=map(int,input().split())
p=[0]+[-1]*n+list(range(1,n+1)) 

s=[0]+[2]*n
def root(i):
    while p[i]!=-1: i=p[i]
    return i
x=0
y=n
for i in range(m):
    u,cu,v,cv=input().split()
    if cu=="R":
        u=int(u)
    else: u=n+int(u)
    if cv=="R":
        v=int(v)
    else: v=n+int(v)

    ru=root(u); rv=root(v)
    if ru!=rv:
        if s[ru]>=s[rv]:
            p[rv]=ru; s[ru]+=s[rv]
        else:                
            p[ru]=rv; s[rv]+=s[ru]
        y-=1
    else:
        if s[ru]>=s[rv]:
            p[rv]=ru; s[ru]+=s[rv]
        else:                
            p[ru]=rv; s[rv]+=s[ru]
        x+=1
        y-=1
print(x,y)