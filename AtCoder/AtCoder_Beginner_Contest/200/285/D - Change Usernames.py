n=int(input())
s=[None]*n
t=[None]*n
for i in range(n):
    s[i],t[i]=input().split()
u=[0]*n
i=0; u[0]=1; c=1
while c<=n:
    if s[i] in t:
        i=t.index(s[i])
        if u[i]==2:
            print("No")
            exit()
        else:
            u[i]=2
            c+=1
    else:
        i+=1
        u[i]=1
        c+=1
        while u[i]!=0: i+=1
print("Yes")