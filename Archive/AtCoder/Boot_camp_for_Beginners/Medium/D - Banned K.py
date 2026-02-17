n=int(input())
a=list(map(int,input().split()))
s=[0]*(n+1)
for _ in a: s[_]+=1
sc=0
for _ in s: sc+=_*(_-1)//2
for _ in a: print(sc-(s[_]-1))