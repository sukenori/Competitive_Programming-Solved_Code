n=int(input())
a=list(map(int,input().split()))
s=set(range(1,n+1))
for i in range(1,n+1):
    if i in s:
        s.discard(a[i-1])
s=sorted(list(s))
print(len(s))
print(*s)