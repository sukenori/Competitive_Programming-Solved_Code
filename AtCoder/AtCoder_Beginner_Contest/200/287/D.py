s=input()
t=input()
l=len(t)
a=[0]*(l+1); b=[0]*(l+1)
for i in range(l):
    a[i+1]=a[i]+(not(s[i]==t[i] or s[i]=="?" or t[i]=="?"))
for i in range(l):
    b[i+1]=b[i]+(not(s[len(s)-1-i]==t[l-1-i] or s[len(s)-1-i]=="?" or t[l-1-i]=="?"))
for i in range(l+1):
    if a[i]+b[l-i]==0: print("Yes")
    else: print("No")