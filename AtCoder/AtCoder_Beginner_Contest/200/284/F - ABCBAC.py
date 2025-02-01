n=int(input())
t=input()
for i in range(n+1):
    for j in range(n):
        if j<i:
            if t[j]!=t[i+(n-1-j)]: break
        else:
            if t[i+(n-1-j)]!=t[n+j]: break
    else:
        print(t[:i]+t[n+i:])
        print(i)
        break
else: print(-1)