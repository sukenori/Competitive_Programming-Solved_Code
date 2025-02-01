n,k=map(int,input().split())
print(["No","Yes"][k>=(n-1)*2 and k%2==0])