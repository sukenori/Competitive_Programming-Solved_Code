n,a,b=map(int,input().split())
d=[]
while len(d)<n+1:
    if (len(d)-a<0 or d[len(d)-a]==1) and (len(d)-b<0 or d[len(d)-b]==1): d.append(0)
    else: d.append(1)
print(["Second","First"][d[-1]])