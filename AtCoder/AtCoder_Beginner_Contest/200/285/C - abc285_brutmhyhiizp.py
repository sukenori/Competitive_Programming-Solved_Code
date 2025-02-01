s=input()
a=0
for i,_ in enumerate(reversed(s)):
    a+=(ord(_)-64)*(26**i)
print(a)