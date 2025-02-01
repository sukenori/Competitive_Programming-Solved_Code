n=int(input())
a=list(map(int,input().split()))
c0=[0]; c1=[0]
for _ in a:
    if _==1:
        c1+=[c1[-1]+1]; c0+=[c0[-1]]
    elif _==0:
        c1+=[c1[-1]]; c0+=[c0[-1]+1]
q=int(input())
for i in range(q):
    l,r=map(int,input().split())
    dc1=c1[r]-c1[l-1]; dc0=c0[r]-c0[l-1]
    print(["win","lose","draw"][(dc1<dc0)+(dc1==dc0)*2])