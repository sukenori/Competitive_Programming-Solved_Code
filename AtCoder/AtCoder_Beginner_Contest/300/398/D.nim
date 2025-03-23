include atcoder/header
var
  N,R,C=nextInt()
  S=nextString()
var
  r,c=0
  s=[(0,0)].toHashSet
  a:seq[char]
for Si in S:
  r=r+(Si=='N').int-(Si=='S').int
  c=c+(Si=='W').int-(Si=='E').int
  s.incl((r,c))
  a.add(if (R+r,C+c) in s: '1' else: '0')
echo a.join