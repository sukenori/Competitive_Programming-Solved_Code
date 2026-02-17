n=int(input())
s=input()
x=[0]
for i,_ in enumerate(s):
    x.append(x[i]+(_=="I")-(_=="D"))
print(max(x))