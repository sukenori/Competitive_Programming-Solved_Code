s=input()
u=set()
b=[set()]
for i in s:
    if i=="(":
        b.append(set())
    elif i==")":
        u.difference_update(b[-1])       
        b.pop()
    else:
        if i in u:
            print("No")
            exit()
        else:
            u.add(i)
            b[-1].add(i)
else:
    print("Yes")