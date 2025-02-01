n=int(input())
l=0.001; r=100.000
while True:
    m=-(-(l*1000+r*1000)//2)/1000
    if m**3+m>=n: r=m
    if m**3+m<n: l=m
    if round(r-l,3)==0.001:
        print(r)
        break