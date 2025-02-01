n,q=map(int,input().split())
p=[-1]*n; s=[1]*n
def root(i):
    while p[i]!=-1: i=p[i]
    return i
for i in range(q):
    qu,u,v=map(int,input().split())
    ru=root(u-1); rv=root(v-1)
    if qu==1:
        if ru!=rv:
            if s[ru]>=s[rv]:
                p[rv]=ru; s[ru]+=s[rv]
            else:
                p[ru]=rv; s[rv]+=s[ru]
    if qu==2:
        if ru==rv: print("Yes")
        else: print("No")