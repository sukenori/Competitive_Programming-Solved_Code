n,a,b=map(int,input().split())
if n==1:
    if a!=b: print(0)
    else: print(1)
if a>b: print(0)
else:
    if n==2: print(1)
    if n>=3: print((b-a)*(n-2)+1)