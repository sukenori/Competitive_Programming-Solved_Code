for i in range(int(input())):
    x=int(input())
    for j in range(2,int(x**0.5)+1):
        if x%j==0:
            print("No")
            break
    else: print("Yes")