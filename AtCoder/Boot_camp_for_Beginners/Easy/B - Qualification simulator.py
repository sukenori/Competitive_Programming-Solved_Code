n,a,b=map(int,input().split())
s=input()
pa=pb=0
for si in s:
    if si=="a" and pa+pb<a+b:
        pa+=1
        print("Yes")
    elif si=="b" and pa+pb<a+b and pb<b:
        pb+=1
        print("Yes")
    else:
        print("No")