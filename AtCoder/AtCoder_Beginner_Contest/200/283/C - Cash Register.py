s=input()
n=0
while True:
    if s[:2]=="00":
        n+=1
        s=s[2:]
    else:
        n+=1
        s=s[1:]
    if s=="": break
print(n)