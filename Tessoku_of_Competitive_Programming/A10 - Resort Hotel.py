n=int(input())
a=list(map(int,input().split()))
p=[0]*n; p[0]=a[0]
q=[0]*n; q[n-1]=a[n-1]
for i in range(1,n):
    p[i]=max(p[i-1],a[i])
    q[n-1-i]=max(q[n-i],a[n-1-i])
for i in range(int(input())):
    l,r=map(int,input().split())
    print(max(p[l-1-1],q[r-1+1]))