s=input()
import re
res=re.fullmatch("[A-Z][0-9]{6}[A-Z]",s)
if res!=None:
    if 100000<=int(s[1:7])<=999999:
        print("Yes")
    else:
        print("No")
else:
    print("No")