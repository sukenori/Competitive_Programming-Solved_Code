n=int(input())
s=list(map(int,input().split()))
a=[s[0]]
for i in range(1,n):
    a.append(s[i]-s[i-1])
print (" ".join(str(_) for _ in a))