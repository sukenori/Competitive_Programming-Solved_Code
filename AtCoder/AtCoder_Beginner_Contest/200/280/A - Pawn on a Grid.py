h,w=map(int,input().split())
c=0
for i in range(h):
    for j in input():
        if j=="#": c+=1
print(c)