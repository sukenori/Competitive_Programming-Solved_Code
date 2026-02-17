k,*q0=map(int,open(0).read().split())
import itertools
for i in itertools.permutations(range(8)):
    if not all(i[q0[j*2]]==q0[j*2+1] for j in range(k)): continue
    if len(set(j+i[j] for j in range(8)))!=8: continue
    if len(set(j-i[j] for j in range(8)))!=8: continue
    q=[["."]*8 for j in range(8)]
    for j,_ in enumerate(i): q[j][_]="Q"
    [print("".join(_)) for _ in q]