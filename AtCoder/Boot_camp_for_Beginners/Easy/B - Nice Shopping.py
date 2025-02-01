a,b,m=map(int,input().split())
ap=list(map(int,input().split()))
bp=list(map(int,input().split()))
c=[list(map(int,input().split())) for _ in range(m)]
print(min(min(ap)+min(bp),min([ap[_[0]-1]+bp[_[1]-1]-_[2] for _ in c])))