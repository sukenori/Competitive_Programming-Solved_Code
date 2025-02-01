a,b=map(int,input().split())
if a>0 or (b<0 and (b-a+1)%2==0): print("Positive") 
if a<=0 and b>=0: print("Zero")
if b<0 and (b-a+1)%2==1: print("Negative")