n,k=map(int,input().split())
s=sum(map(int,list(input())))
print(["No","Yes"][(s+k)%2==0])