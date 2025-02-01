n=int(input())
a=list(map(int,input().split()))
l=[0]*101
for _ in a: l[_]+=1
print(sum([l[i]*(l[i]-1)*(l[i]-2)//6 for i in range(101)]))