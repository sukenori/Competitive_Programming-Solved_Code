r,g,b,n=map(int,input().split())
c=0
for i in range(n//r+1):
    for j in range(n//g+1):
        if n>=r*i+g*j and (n-r*i-g*j)%b==0:
            c+=1
print(c)