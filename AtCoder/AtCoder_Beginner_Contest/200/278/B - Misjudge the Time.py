h,m=map(int,input().split())
while True:
    dh=int(h//10*10+m//10)
    dm=int(h%10*10+m%10)
    if dh<24 and dm<60:
        print(h,m)
        break
    else:
        m+=1
        if m==60:
            m=0; h+=1
            if h==24: h=0