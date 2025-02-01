n=int(input())
a=0
for _ in map(int,input().split()): a^=_
print(["First","Second"][a==0])