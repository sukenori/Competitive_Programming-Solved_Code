a,b,c=map(int,input().split())
if a==b==c and a%2==b%2==c%2==0:
    print(-1)
else:
    s=a+b+c
    n=0
    while a%2==b%2==c%2==0:
        a,b,c=(s-a)/2,(s-b)/2,(s-c)/2
        n+=1
    print(n)