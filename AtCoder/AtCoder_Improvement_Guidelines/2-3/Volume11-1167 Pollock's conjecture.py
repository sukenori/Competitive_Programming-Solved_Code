dpa=[0]+[10**6]*10**6
dpi=dpa[:]
for i in range(1,182):
    p=i*(i+1)*(i+2)//6
    for j in range(p,10**6+1):
        n=dpa[j-p]+1
        if n<dpa[j]: dpa[j]=n
        if p%2:
            n=dpi[j-p]+1
            if n<dpi[j]: dpi[j]=n
while True:
    i=int(input())
    if i==0: break
    print(dpa[i],dpi[i])