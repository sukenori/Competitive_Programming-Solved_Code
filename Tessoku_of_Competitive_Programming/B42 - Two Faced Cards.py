n=int(input())
pp=0; pm=0; mp=0; mm=0
for i in range(n):
    a,b=map(int,input().split())
    if a+b>0: pp+=a+b
    if a-b>0: pm+=a-b
    if -a+b>0: mp+=-a+b
    if -a-b>0: mm+=-a-b
print(max(pp,pm,mp,mm))