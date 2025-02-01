n,l=map(int,input().split())
m=0
for i in range(n):
    a,b=input().split()
    m=max(m,int(a)*(b=="W")+(l-int(a))*(b=="E"))
print(m)