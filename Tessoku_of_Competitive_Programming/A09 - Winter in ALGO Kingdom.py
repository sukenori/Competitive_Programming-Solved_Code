h,w,n=map(int,input().split())
hw=[[0]*(w+1) for i in range(h+1)]
for i in range(n):
    a,b,c,d=map(int,input().split())
    hw[a-1][b-1]+=1; hw[c][d]+=1
    hw[a-1][d]-=1; hw[c][b-1]-=1
for i in range(h):
    for j in range(1,w):
        hw[i][j]+=hw[i][j-1]
for i in range(w):
    for j in range(1,h):
        hw[j][i]+=hw[j-1][i]
for _ in hw[:h]:
    print(*_[:w])