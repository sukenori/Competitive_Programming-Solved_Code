a=0
print(max((a:=a+1 if _ in "ACGT" else 0) for _ in input()))