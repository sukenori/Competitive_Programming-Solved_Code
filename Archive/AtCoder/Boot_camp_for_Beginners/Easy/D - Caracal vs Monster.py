h=int(input())
l=0
while h!=1:
    h//=2
    l+=1
print(2**(l+1)-1)