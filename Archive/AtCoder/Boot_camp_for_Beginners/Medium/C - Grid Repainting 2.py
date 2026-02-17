h,w=map(int,input().split())
s=["."*(w+2)]+["."+input()+"." for _ in range(h)]+["."*(w+2)]
for i in range(h):
    for j in range(w):
        if s[i][j]=="#":
            if s[i-1][j]==s[i][j-1]==s[i+1][j]==s[i][j+1]==".":
                print("No")
                exit()
print("Yes")       