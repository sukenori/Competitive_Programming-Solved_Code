n,k=map(int,input().split())
s=input()
m=1
r=""
for _ in s:
    if _=="o" and m<=k:
        r+="o"
        m+=1
    else: r+="x"
print(r)