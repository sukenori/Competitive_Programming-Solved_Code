f=[1,1]
n=int(input())
for i in range(1,n):
    f+=[f[-1]+f[-2]]
print(f[n])