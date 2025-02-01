n,c=input().split()
s=0
for _ in input():
    if _=="B": s+=1
    if _=="R": s+=2    
print(["No","Yes"][(s%3==0 and c=="W") or (s%3==1 and c=="B") or (s%3==2 and c=="R")]).py