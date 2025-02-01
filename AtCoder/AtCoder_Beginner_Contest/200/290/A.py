n,m=map(int,input().split())
a=list(map(int,input().split()))
m=list(map(int,input().split()))
s=0
for i in m:
    s+=a[i-1]
print(s)