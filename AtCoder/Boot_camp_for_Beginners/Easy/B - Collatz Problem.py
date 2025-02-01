s=na=int(input())
a=[]
while na not in a:
    a.append(na)
    na=int((na%2==0)*na/2+(na%2==1)*(3*na+1))   
print(len(a)+1)