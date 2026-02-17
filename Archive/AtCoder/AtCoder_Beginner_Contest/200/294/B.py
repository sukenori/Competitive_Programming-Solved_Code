h,w=map(int,input().split())
a=[list(map(int,input().split())) for i in range(h)]
for i in range(h):
    for j in range(w):
        a[i][j]=chr(64+a[i][j])
for i in range(h):
    print("".join(a[i]).replace("@","."))