n,q=map(int,input().split())
s=input()
B=[1]*(n+1); b=26; m=2147483647
for i in range(n): B[i+1]=(B[i]*b)%m
h=[0]*(n+1); rh=[0]*(n+1)
for i,_ in enumerate(s):
    h[i+1]=(h[i]*b+ord(_))%m
for i,_ in enumerate(s[::-1]):
    rh[n-i-1]=(rh[n-i]*b+ord(_))%m
for i in range(q):
    ll,rr=map(int,input().split())
    lr=ll+(rr-ll-1)//2; rl=rr-(rr-ll-1)//2
    if (h[lr]-h[ll-1]*B[(lr-ll+1)])%m==(rh[rl-1]-rh[rr]*B[rr-rl+1])%m:
        print("Yes")
    else:
        print("No")