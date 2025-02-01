for i in range(int(input())):
    n,k=map(int,input().split())
    s=input()
    print(s[:n//2],s[-n//2:][::-1])
    print(k/n)
    if n>k and n%k==0:
        print(s[:(n-k)//2],s[-(n-k)//2:])       
        if s[:(n-k)//2]==s[-(n-k)//2:]:
            print("Yes")
    if k>n and k%n==0:
        print("Yes")
    elif s[:n//2]==s[-n//2:][::-1]:

        print("Yes")
    else: print("No")