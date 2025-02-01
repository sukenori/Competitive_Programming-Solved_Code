s=input()
l=len(s)-2
while s[:l]!=s[:l//2]*2:
    l-=2
print(l)