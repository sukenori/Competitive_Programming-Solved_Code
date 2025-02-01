n=input()
if int(n)%2==1: print(0)
else:
    s=0
    l=len(n)
    for i in range(1,l):
        s+=int(n[l-1-i])+(int(n[l-1-i])>=5)
        if i<l-1: s+=int(n[:-i-1])*10
    print(s)