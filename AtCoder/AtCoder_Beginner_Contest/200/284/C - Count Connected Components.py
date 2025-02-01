n,m=map(int,input().split())
a=[set()]
for i in range(n):
    a.append({i+1})
for i in range(m):
    u,v=map(int,input().split())
    a.append({u,v})
i=0
while i<len(a):
    j=0
    while j<len(a):
        if a[i]&a[j]!=set() and i!=j:
            a[i]=a[i]|a[j]
            a.remove(a[j])
            i=0; j=-1
        j+=1
    i+=1
print(len(a)-1)