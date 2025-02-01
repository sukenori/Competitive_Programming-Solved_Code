import numpy as np
n=input()
a=np.array(list(map(int,input().split())))
t=0
while all(a%2==0):
    a//=2
    t+=1
print(t)