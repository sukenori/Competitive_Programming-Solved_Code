n=int(input())
s=sorted([int(input()) for _ in range(n)]+[0])
for i in range(n):
    if (sum(s)-s[i])%10!=0:
        print(sum(s)-s[i])
        break
else:
    print(0)