n=int(input())
import numpy as np
a=np.array(list(map(int,input().split())))
print(np.amax(np.unique(np.append(np.append(a,a-1),a+1),return_counts=True)[1]))