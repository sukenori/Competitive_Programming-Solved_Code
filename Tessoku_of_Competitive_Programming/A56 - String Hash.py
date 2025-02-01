n,q=map(int,input().split())
s=input()
B=[1]*(n+1); b=26; m=2147483647
for i in range(n): B[i+1]=B[i]*b%m
h=[0]*(n+1)
for i,_ in enumerate(s):
    h[i+1]=(h[i]*b+ord(_))%m
for i in range(q):
    a,b,c,d=map(int,input().split())
    if (h[b]-h[a-1]*B[b-a+1])%m==(h[d]-h[c-1]*B[d-c+1])%m:
        print("Yes")
    else: print("No")