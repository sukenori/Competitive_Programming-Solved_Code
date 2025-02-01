a,b=map(int,input().split())
st=max(int((a/(2*b))**(2/3)-1)-3,0)
print(format(min([b*_+a/(1+_)**0.5 for _ in range(st,st+6)]),".8f"))