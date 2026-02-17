import numpy as np
c=np.array([[int(j) for j in input().split()] for i in range(3)])
tc=np.array(list(map(list,zip(*c))))
for j in range(2):
    if not((c[0+j]-c[1+j])[0]==(c[0+j]-c[1+j])[1]==(c[0+j]-c[1+j])[2]
    and (tc[0+j]-tc[1+j])[0]==(tc[0+j]-tc[1+j])[1]==(tc[0+j]-tc[1+j])[2]):
        print("No")
        break
else:
    print("Yes")