s=input()
a=""
for i in range(len(s)//2):
    a+=s[2*i+1]+s[i*2]
print(a)