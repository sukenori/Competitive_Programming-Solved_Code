n=int(input())
a=[int(input()) for _ in range(n)]
i=0
d={0}
while True:
    if a[i]==2:
        print(len(d))
        break
    elif a[i]-1 in d:
        print(-1)
        break
    else:
        i=a[i]-1
        d.add(i)