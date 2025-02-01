n=input()
for i,_ in enumerate(reversed(n)):
    _=int(_)
    if i==0: s=(1+_)*_//2
    else: s+=(_-1)*_//2*(10**i)+_*(int(n[-i:])+1)
    if i!=len(n)-1: s+=int(n[:-i-1])*45*(10**i) 
print(s)