include atcoder/header
let H,W,N,M=nextInt()
var l,b,ah,aw:HashSet[(int,int)]
for _ in 1..N:
  let A,B=nextInt()-1
  l.incl((A,B))
for _ in 1..M:
  let C,D=nextInt()-1
  b.incl((C,D))
for (i,j) in l:
  var d=newSeq[(int,int)]()
  if (i,j) notin ah: ah.incl((i,j)); d&=[(-1,0),(1,0)]
  if (i,j) notin aw: aw.incl((i,j)); d&=[(0,1),(0,-1)]
  for (dh,dw) in d:
    var k=1; while true:
      let (nh,nw)=(i+dh*k,j+dw*k)
      if nh in 0..<H and nw in 0..<W and (nh,nw) notin b:
        if dw==0 and (nh,nw) notin ah: ah.incl((nh,nw))
        if dh==0 and (nh,nw) notin aw: aw.incl((nh,nw))
        k+=1
      else: break
echo (ah+aw).len