t=0; r=10
for i in range(5):
    a=int(input())
    if a%10!=0:
        t+=(a//10+1)*10
        r=min(r,a%10)
    else: t+=a
print(t-(10-r))