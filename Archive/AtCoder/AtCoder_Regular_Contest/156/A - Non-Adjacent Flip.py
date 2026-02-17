for i in range(int(input())):
    n=int(input())
    s=input(); f=sum(map(int,s))
    if f%2==1 or s=="110" or s=="011": print(-1)
    elif s=="0110": print(3)
    elif "11" in s and f==2: print(2)
    else: print(f//2)