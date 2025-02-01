a=[0]
for i in range(2): a.append(1)
for i in range(3,int(input())+1):
    a.append((a[i-2]+a[i-1])%(10**9+7))
print(a[-1])