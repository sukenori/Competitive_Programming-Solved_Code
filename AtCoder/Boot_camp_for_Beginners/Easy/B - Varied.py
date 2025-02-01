s=input()
print(["yes","no"][not len(s)==len(set(s))])