n,q=map(int,input().split())
a=list(map(int,input().split()))
ca=[0]
for _ in a: ca+=[ca[-1]+_]
for i in range(q):
    l,r=map(int,input().split())
    print(ca[r]-ca[l-1])