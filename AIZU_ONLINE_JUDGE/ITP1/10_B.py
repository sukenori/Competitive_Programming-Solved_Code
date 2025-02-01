a,b,c=map(int,input().split())
import math
print("{:.8f}".format(a*b*math.sin(math.radians(c))/2))
print("{:.8f}".format(a+b+(a**2+b**2-2*a*b*math.cos(math.radians(c)))**0.5))
print("{:.8f}".format(b*math.sin(math.radians(c))))