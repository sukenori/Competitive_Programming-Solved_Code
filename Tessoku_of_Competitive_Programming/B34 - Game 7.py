n,x,y=map(int,input().split())
a=list(map(int,input().split()))
xg=0
for _ in a: xg^=[0,0,1,1,2][_%5]
print(["First","Second"][xg==0])