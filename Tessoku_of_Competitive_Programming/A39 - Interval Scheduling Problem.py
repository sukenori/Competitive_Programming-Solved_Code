n=int(input())
lr=sorted([list(map(int,input().split())) for i in range(n)],key=lambda x:x[1])
t=0; c=0
for i in range(n):
    if t<=lr[i][0]:
        t=lr[i][1]
        c+=1
print(c)