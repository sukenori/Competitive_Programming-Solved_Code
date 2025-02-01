n,k=map(int,input().split())
a=list(map(int,input().split()))
d=[]
while len(d)<n+1:
    if all([len(d)-_<0 or d[len(d)-_]==1 for _ in a]): d.append(0)
    else: d.append(1)
print(["Second","First"][d[-1]])