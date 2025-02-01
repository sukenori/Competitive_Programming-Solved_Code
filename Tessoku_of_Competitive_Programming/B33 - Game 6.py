n,h,w=map(int,input().split())
ab=0
for i in range(n):
    a,b=map(int,input().split())
    ab^=(a-1)^(b-1)
print(["First","Second"][ab==0])