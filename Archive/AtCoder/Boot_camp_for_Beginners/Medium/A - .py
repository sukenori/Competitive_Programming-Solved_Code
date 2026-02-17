s=input()
n=len(s)+1
a=[0]*n
for i in range(n-1):
    if s[i]=="<": a[i+1]=a[i]+1
for i in reversed(range(n-1)):
    if s[i]==">": a[i]=max(a[i],a[i+1]+1)
print(sum(a))