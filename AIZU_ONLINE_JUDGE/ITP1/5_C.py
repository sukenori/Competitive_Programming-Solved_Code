while True:
    h,w=map(int,input().split())
    if h==w==0: break
    for i in range(h):
        if i%2==0:
            print("#."*(w//2)+"#"*(w%2==1))
        else:
            print(".#"*(w//2)+"."*(w%2==1))
    print()