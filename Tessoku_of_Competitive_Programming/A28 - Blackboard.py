s=0
for i in range(int(input())):
    t,a=input().split()
    exec("s=(s"+t+a+")%10000")
    print(s)