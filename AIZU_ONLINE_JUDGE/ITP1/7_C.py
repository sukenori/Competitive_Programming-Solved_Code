r,c=map(int,input().split())
s=[list(map(int,input().split())) for i in range(r)]
s.append([])
for i in range(r):
    s[i].append(sum(s[i]))
for i in range(c+1):
    s[r].append(sum([s[j][i] for j in range(r)]))
for _ in s:
    print(*_)