n,m=map(int,input().split())
a="?"*n
for i in range(m):
    s,c=map(int,input().split()); c=str(c)
    if a[s-1]=="?" or a[s-1]==c: a=a[:s-1]+c+a[s:]
    else: a="-1"
if n>1 and a[0]=="?": a="1"+a[1:]
if n>1 and a[0]=="0": a="-1"
a=a.replace("?","0")
print(a)