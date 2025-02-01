n=int(input())
a=list(input().split())
d=[0]*100
for _ in a: d[int(_[-2:])]+=1
s=0
for i in [0,50]: s+=d[i]*(d[i]-1)//2
for i in range(1,50): s+=d[i]*d[100-i]
print(s)