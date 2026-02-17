include atcoder/header
let
  N,K=nextInt()
var T=nextString()
let c=T.toCountTable
for i in 0..<N:
  if T[i]=='o':
    if 0<i and T[i-1]=='?': T[i-1]='.'
    if i<N-1 and T[i+1]=='?': T[i+1]='.'
  if c['o']==K and T[i]=='?': T[i]='.'
var
  r:seq[(int,int)]
  rmax=0
  s,ri=0
for i in 0..N:
  if i==N or T[i]!='?':
    if ri mod 2==1:
      r.add((s,ri)); rmax+=ri div 2+1
    else: rmax+=ri div 2
    ri=0
  else:
    if ri==0: s=i; ri=1
    else: ri+=1
if rmax==K-c['o']:
  for (s,ri) in r:
    for i in s..<s+ri:
      if (i-s) mod 2==0: T[i]='o' else: T[i]='.'
echo T