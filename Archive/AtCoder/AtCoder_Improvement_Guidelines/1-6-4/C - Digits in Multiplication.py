n=int(input())
import math
print(min(max(len(str(i)),len(str(n//i))) for i in range(1,int(math.sqrt(n))+1) if n%i==0))