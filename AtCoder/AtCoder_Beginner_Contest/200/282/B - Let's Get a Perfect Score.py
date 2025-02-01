n,m=map(int,input().split())
s=[input() for i in range(n)]
c=0
for i in range(n-1):
    for j in range(i+1,n):
        for k in range(m):
            if s[i][k]=="x" and s[j][k]=="x":
                break
        else:
            c+=1
print(c)