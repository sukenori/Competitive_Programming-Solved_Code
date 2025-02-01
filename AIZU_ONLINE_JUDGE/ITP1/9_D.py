s=list(input())
for i in range(int(input())):
    o=list(input().split())
    a=int(o[1]); b=int(o[2])
    if o[0]=="print": print(*s[a:b+1],sep="")
    if o[0]=="reverse": s[a:b+1]=reversed(s[a:b+1])
    if o[0]=="replace": s[a:b+1]=o[3]