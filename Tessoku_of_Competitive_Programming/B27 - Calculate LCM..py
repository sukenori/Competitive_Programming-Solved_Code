a,b=map(int,input().split())
m=a*b
while a!=0 and b!=0:
    if a>=b: a%=b
    elif b>a: b%=a
print(m//[a,b][a==0])