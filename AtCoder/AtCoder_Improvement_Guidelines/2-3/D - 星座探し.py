s=[list(map(int,input().split())) for i in range(int(input()))]
p={tuple(map(int,input().split())) for i in range(int(input()))}
for px,py in p:
    x=px-s[0][0]; y=py-s[0][1]
    for sx,sy in s[1:]:
        if not (sx+x,sy+y) in p: break
    else: exit(print(x,y))