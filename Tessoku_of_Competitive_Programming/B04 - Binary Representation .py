n=input()
print(sum([2**(len(n)-1-i)*int(_) for i,_ in enumerate(n)]))