s=input()
a=[]
r=l=c=0
for i,_ in enumerate(s):
    if _=="R":
        if c==1:
            a.append([r,l])
            r=l=c=0
        r+=1
    if _=="L":
        l+=1
        c=1
        if i==len(s)-1:
            a.append([r,l])
ls=[]
for _ in a:
    ls+=[0]*(_[0]-1)+[1+(_[0]-1)//2+_[1]//2]+[1+(_[1]-1)//2+_[0]//2]+[0]*(_[1]-1)
print(" ".join(map(str,ls)))