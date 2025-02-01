n,t=map(int,input().split())
a=list(map(int,input().split()))
r=t%sum(a)
for i in range(n):
    if r<a[i]:
        print(i+1,r)
        break
    r-=a[i]