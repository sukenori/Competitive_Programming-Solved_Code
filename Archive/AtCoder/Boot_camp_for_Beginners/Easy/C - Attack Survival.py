n,k,q=map(int,input().split())
p=[0]*n
for i in range(q):
    p[int(input())-1]+=1
for _ in p:
    print(["Yes","No"][k-q+_<=0])