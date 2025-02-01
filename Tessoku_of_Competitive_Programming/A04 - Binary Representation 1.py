n=int(input())
b=""
for i in reversed(range(10)):
    if 2**(i+1)>n>=2**i:
        b+="1"
        n-=2**i
    else:
        b+="0"
print(b)