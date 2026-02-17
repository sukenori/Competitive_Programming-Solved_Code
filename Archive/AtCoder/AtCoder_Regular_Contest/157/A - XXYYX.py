n,a,b,c,d=map(int,input().split())
print(["Yes","No"][abs(b-c)>1 or (a>0 and d>0 and b==c==0)])