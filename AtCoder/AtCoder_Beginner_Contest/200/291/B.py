n=int(input())
x=sorted(list(map(int,input().split())))
print(sum(x[n:n*4])/len(x[n:n*4]))