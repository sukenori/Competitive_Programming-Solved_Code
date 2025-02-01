a,b,c=map(int,input().split())
import math
print(["YES","NO"][c%math.gcd(a,b)!=0])