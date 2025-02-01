h,w=map(int,input().split())
s=[list(input()) for _ in range(h)]
t=[list(input()) for _ in range(h)]
hs=sorted(["".join([s[i][j] for i in range(h)]) for j in range(w)])
ht=sorted(["".join([t[i][j] for i in range(h)]) for j in range(w)])
print(["Yes","No"][hs!=ht])