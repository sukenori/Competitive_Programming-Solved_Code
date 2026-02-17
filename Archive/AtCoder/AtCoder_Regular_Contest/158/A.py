for i in range(int(input())):
    x1,x2,x3=map(int,input().split())
    xa=(x1+x2+x3)//3
    x1,x2,x3=(abs(_-xa) for _ in (x1,x2,x3))
    if x1%2+x2%2+x3%2==0: print((x1+x2+x3)//(2*2))
    else: print(-1)