n=int(input())
d,x=map(int,input().split())
a=[int(input()) for _ in range(n)]
print(sum(1+(d-1)//ai for ai in a)+x)