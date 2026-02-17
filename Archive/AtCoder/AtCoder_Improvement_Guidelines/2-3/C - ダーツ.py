n,m,*p=map(int,open(0).read().split()); p+=[0]
s=sorted(list({i+j for i in p for j in p}))
import bisect
print(m-min([m-s[i]-s[bisect.bisect_right(s,m-s[i])-1] for i in range(len(s)) if s[i]<=m]))