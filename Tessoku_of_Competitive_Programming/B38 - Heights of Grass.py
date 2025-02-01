n=int(input())
s=input()
h=[1]*n
for i in range(n-1):
    if s[i]=="A": h[i+1]=h[i]+1
for i in reversed(range(n-1)):
    if s[i]=="B": h[i]=max(h[i],h[i+1]+1)
print(sum(h))