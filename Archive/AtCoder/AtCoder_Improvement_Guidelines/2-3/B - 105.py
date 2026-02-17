n=int(input())
print(sum(i%2==1 and sum(i%j==0 for j in range(1,i+1))==8 for i in range(1,n+1)))