include atcoder/header
var s:HashSet[(int,int)]
for r in 0..<9:
  let S=nextString()
  for c in 0..<9:
    if S[c]=='#': s.incl((r,c))
var ir,ic,jr,jc,vr,vc:int
var a=0
for (ir,ic) in s:
  for (jr,jc) in s:
    (vr,vc)=(jr-ir,jc-ic)
    if vr!=0 or vc!=0:
      if (ir+vc,ic-vr) in s and (jr+vc,jc-vr) in s: a+=1
echo a div 4