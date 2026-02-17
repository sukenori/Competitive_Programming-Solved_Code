s=input()
k="keyence"
for i in range(7):
    if s[i]==k[i]:
        continue
    else:
        break
for j in range(7):
    if s[len(s)-1-j]==k[6-j]:
        continue
    else:
        break
print(["YES","NO"][(i+j<7)])