s=input()
a=[]
c=0
for ps in s:
    if ps not in "ACGT":
        a.append(c)
        c=0
    else:
        c+=1
a.append(c)
print(max(a))