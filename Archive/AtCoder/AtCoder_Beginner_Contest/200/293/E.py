a,x,m=map(int,input().split())
s=[1]
r=1
while True:
    r*=a; pp=r%m
    if pp in s: break
    else: s+=[pp]
print(s,pp)
print(s[(x+1)%(len(s))])
