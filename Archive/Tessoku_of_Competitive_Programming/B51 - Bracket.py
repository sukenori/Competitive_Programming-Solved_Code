s=input()
b=[]
for i,_ in enumerate(s):
    if _=="(": b.append(i+1)
    if _==")": print(b.pop(),i+1)