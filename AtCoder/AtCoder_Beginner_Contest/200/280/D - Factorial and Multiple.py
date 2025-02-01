k=int(input())
d=[]
for i in range(1,int(k**0.5)+1):
    if k%i==0: d.append(i)
c=d.copy()
for _ in reversed(c):
    d.append(k//_)
a=[]
for _ in list(set(d))[1:]:
    i=1
    while k%(_**i)==0:
        a.append(_*i)
        i+=1
if len(a)==1:
    print(*a)
else:
    import math
    for _ in sorted(list(set(a))):
        if math.factorial(_)%k==0:
            print(_)
            break