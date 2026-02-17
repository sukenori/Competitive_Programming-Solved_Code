a,b=map(int,input().split())
s=input()
print(["No","Yes"][all([all([_!="-" for _ in s[:a-1]]),s[a]=="-",all([_!="-" for _ in s[a+1:]])])])