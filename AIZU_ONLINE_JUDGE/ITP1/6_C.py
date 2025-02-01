a=[[[0]*10 for r in range(3)] for b in range(4)]
n=int(input())
for i in range(n):
    b,f,r,v=map(int,input().split())
    a[b-1][f-1][r-1]+=v
print(("\n"+"#"*20+"\n").join(["\n".join(["".join([" "+str(a[b][f][r]) for r in range(10)]) for f in range(3)]) for b in range(4)]))