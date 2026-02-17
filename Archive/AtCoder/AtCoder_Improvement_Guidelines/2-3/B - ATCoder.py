c=[0]
for _ in input(): c+=[(c[-1]+1)*(_ in "ACGT")]
print(max(c))