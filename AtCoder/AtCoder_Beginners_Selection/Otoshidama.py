n,y=map(int,input().split())
for n1 in range(n+1):
    for n2 in range(n+1-n1):
        n3=n-n1-n2
        if y==10000*n1+5000*n2+1000*n3:
            break
    else:
        continue
    break
else:
    n1=n2=n3=-1
print(n1,n2,n3)