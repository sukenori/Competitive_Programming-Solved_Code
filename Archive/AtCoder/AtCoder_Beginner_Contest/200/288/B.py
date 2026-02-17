n,k=map(int,input().split())
s=[input() for i in range(n)]
[print(_) for _ in sorted(s[:k])]