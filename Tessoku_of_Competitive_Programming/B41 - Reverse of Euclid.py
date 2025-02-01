x,y=map(int,input().split())
xy=[[x,y]]
while x>1 or y>1:
    if x>y: x-=y
    else: y-=x
    xy.append([x,y])
print(len(xy)-1)
for _ in reversed(xy[:-1]): print(*_)