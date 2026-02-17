s=input()
s1="01"*(len(s)//2)+"0"*(len(s)%2)
s2="10"*(len(s)//2)+"1"*(len(s)%2)
a1=a2=0
for i,_ in enumerate(s):
    if _!=s1[i]: a1+=1
    if _!=s2[i]: a2+=1
print(min(a1,a2))  