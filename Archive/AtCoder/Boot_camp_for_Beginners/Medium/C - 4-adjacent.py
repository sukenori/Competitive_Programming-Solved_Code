n,*a=map(int,open(0).read().split())
c4=c2=0
for _ in a:
    if _%4==0: c4+=1
    if _%4==2: c2+=1
print(["No","Yes"][c4+c2//2>=n//2])