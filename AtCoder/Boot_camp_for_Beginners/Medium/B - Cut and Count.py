n=int(input())
s=input()
k=[]
for i in range(n-1):
    k.append(len(set(s[:i+1])&set(s[i+1:])))
print(max(k))