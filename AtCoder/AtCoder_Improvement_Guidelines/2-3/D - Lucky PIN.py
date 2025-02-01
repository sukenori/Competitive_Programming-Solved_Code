n=int(input()); s=input()
c=0
for i in range(1000):
    p=str(i).zfill(3)
    if (j0:=s.find(p[0]))>=0 and (j1:=s[j0+1:].find(p[1]))>=0 and s[j0+1+j1+1:].find(p[2])>=0: c+=1
print(c)