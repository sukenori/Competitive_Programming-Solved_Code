n=int(input()); xy=[]
for i in range(n):
    for j in range(int(input())):
        x,y=map(int,input().split()); xy+=[[i,x-1,y]]
print(max(sum(map(int,bin(i)[2:]))*all(i>>x&1==y or i>>j&1==0 for j,x,y in xy) for i in range(1<<n)))