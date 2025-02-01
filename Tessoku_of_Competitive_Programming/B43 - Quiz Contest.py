n,m=map(int,input().split())
s=[0]*n
for _ in map(int,input().split()): s[_-1]+=1
for i in range(n): print(m-s[i])