h,w=map(int,input().split())
s=[input() for _ in range(h)]
n=[[0]*(w+2) for _ in range(h+2)]
for i in range(h):
    for j in range(w):
        if s[i][j]=="#":
            for k in range(-1,2):
                for l in range(-1,2):
                    n[i+1+k][j+1+l]+=1
for i in range(h):
    for j in range(w):
        if s[i][j]!="#":
            s[i]=s[i][:j]+str(n[i+1][j+1])+s[i][j+1:]
print("\n".join(s[i] for i in range(h)))