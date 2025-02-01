t=int(input())
for i in range(t):
    n=int(input())
    a=list(map(int,input().split()))
    c=0
    for j in range(n):
        c+=(a[j]%2==1)
    print(c)