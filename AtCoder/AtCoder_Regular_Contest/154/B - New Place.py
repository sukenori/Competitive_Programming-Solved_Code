n=int(input())
s=input()
t=input()
p=[None]*n
d=0
for i in range(n-1,-1,-1):
    if t[i]==s[i+d]:
        p[i+d]=i
        continue
    else:
        for j in range(i+d):
            if t[i]==s[j] and p[j]==None:
                p[j]=i
                d+=1
                break
        else:
            print("-1")
            exit()
c=0; i=0
while p[i]!=0:
    c+=1; i+=1
while i<n-1:
    if p[i]>p[i+1]: c+=1
    i+=1
print(c)