h,w=map(int,input().split())
import numpy as np
a=np.array([list(input()) for _ in range(h)])
a=a[np.any(a=="#",axis=1),:]
a=a[:,np.any(a=="#",axis=0)]
print("\n".join("".join(a.tolist()[i]) for i in range(a.shape[0])))