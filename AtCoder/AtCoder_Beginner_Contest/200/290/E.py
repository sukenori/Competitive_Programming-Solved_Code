n=int(input())
a=list(map(int,input().split()))
s=0
for i in range(2,n+1):
    for j in range(n-i+1):
        for k in range(i//2):
            if a[j+k]!=a[j+i-1-k]: s+=1
print(s)