while True:
    m,f,r=map(int,input().split())
    if m==f==r==-1: break
    if (m==-1 or f==-1):
        print("F")
    else:
        if 80<=m+f: print("A")
        if 65<=m+f<80: print("B")
        if 50<=m+f<65 or (30<=m+f<50 and 50<=r): print("C")
        if 30<=m+f<50 and r<50: print("D")
        if m+f<30: print("F")