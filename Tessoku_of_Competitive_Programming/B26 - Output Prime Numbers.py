n=int(input())
s={_ for _ in range(2,n+1)}
for i in range(2,int(n**0.5)+1):
    m=2
    while n>=i*m:
        s.discard(i*m)
        m+=1
for _ in sorted(list(s)):
    print(_)