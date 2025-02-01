a,b=map(int,input().split())
while a!=0 and b!=0:
    if a>=b: a%=b
    elif b>a: b%=a
print([a,b][a==0])