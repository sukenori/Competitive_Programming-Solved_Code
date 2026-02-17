h,w=map(int,input().split())
if h==1 or w==1:
    print(1)
else:
    print(int((h*w+(h*w%2!=0))/2))