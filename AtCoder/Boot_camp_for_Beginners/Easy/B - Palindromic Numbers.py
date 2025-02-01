a,b=map(int,input().split())
print(sum(str(_)==str(_)[::-1] for _ in range(a,b+1)))