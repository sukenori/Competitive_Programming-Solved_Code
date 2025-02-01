n,m=map(int,input().split())
s=[input() for i in range(n)]
t=[input() for i in range(m)]
c=0
for si in s:
    for ti in t:
        if si[3:]==ti:
            c+=1
            break
print(c)