k,n=map(int,input().split())
a=list(map(int,input().split()))
b=[a[i+1]-a[i] for i in range(n-1)]
b.append(k+a[0]-a[n-1])
print(k-max(b))