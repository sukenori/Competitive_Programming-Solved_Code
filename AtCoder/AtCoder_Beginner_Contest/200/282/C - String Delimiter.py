n=int(input())
s=input()
a=""; f=0
for _ in s:
    if _=="\"" and f==0:
        f=1
    elif _=="\"" and f==1:
        f=0
    if f==0 and _==",":
        a+="."
    else:
        a+=_
print(a)