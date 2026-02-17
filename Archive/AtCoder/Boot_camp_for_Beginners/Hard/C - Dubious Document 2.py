sa=input()
t=input()
l=len(sa)-len(t)
for i in range(l+1):
    s="?"*(l-i)+t+"?"*i
    for j in range(len(s)):
        if sa[j]=="?" or s[j]==sa[j]: continue
        elif s[j]=="?":
            s=s[:j]+sa[j]+s[j+1:]
            continue
        else: break          
    else:
        print(s.replace("?","a"))
        exit()
else: print("UNRESTORABLE")