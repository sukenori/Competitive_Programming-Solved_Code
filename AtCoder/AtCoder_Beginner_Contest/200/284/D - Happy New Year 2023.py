t=int(input())
for i in range(t):
    n=int(input())
    for j in range(2,int(n**(1/3))+1):
        if n%j==0:
            k=round(n/(j**2))
            if (j**2)*k==n:
                print(j,k)
            k=round((n/j)**0.5)
            if (k**2)*j==n:
                print(k,j)