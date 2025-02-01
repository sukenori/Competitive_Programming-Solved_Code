n,q=map(int,input().split())
if n==26 and q==1000:
    p="".join(chr(ord("A")+i) for i in range(n))
    for i in reversed(range(1,n)):
        for j in range(i):
            print("?",p[j:j+1],p[j+1:j+2])
            ans=input()
            if ans==">":
                p=p.translate(str.maketrans({p[j:j+1]:p[j+1:j+2],p[j+1:j+2]:p[j:j+1]}))
if n==26 and q==100:




if n==5 and q==7:

print ("!",p,flush=True)