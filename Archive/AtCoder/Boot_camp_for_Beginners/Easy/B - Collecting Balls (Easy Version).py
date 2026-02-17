n=int(input())
k=int(input())
x=list(map(int,input().split()))
print(sum(min([x[i],k-x[i]]) for i in range(n))*2)