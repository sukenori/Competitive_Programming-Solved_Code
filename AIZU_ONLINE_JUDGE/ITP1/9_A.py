w=input().lower()
t=[]
while True:
    i=input()
    if i=="END_OF_TEXT": break
    t+=i.lower().split()
print(t.count(w))