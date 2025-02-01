n=int(input())
a=list(map(int,list(input())))
b=list(map(int,list(input())))
for i in range(n):
    if a[i]>b[i]: a[i],b[i]=b[i],a[i]
q=998244353
a=int("".join([str(_) for _ in a]))
b=int("".join([str(_) for _ in b]))
print(((a%q)*(b%q))%q)