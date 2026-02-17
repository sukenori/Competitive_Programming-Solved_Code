include atcoder/header
let N,Q=nextInt()
var
  p=(0..<N).toSeq
  r=newSeq[int](N)
  s=newSeq[HashSet[int]](N)
proc root(i:int):int=
  if p[i]==i: return i
  else: p[i]=root(p[i]); return p[i]
proc change(i,j:int,f:bool)=
  if f: s[j].incl(i)
  else: s[j].excl(i)
  if j==root(i): return
  change(i,p[j],f)
proc unite(u,v:int)=
  let
    ru=root(u)
    rv=root(v)
  if ru==rv: return
  else:
    if r[ru]<r[rv]:
      p[ru]=rv
      for si in s[ru]: change(si,si,true)
    else:
      p[rv]=ru
      for si in s[rv]: change(si,si,true)
      if r[ru]==r[rv]: r[ru]+=1
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let u,v=nextInt()-1
    unite(u,v)
  elif q==2:
    let v=nextInt()-1
    change(v,v,v notin s[v])
  else:
    let v=nextInt()-1
    echo if s[root(v)].len>0: "Yes" else: "No"