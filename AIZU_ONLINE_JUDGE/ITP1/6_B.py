n=int(input())
p=[input() for i in range(n)]
for s in ["S","H","C","D"]:
    for n in range(1,14):
        c=s+" "+str(n)
        if c not in p: print(c)