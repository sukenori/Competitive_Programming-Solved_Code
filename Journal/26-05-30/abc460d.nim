include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  H,W=int.input
  S=Seq[H:string.input]
var
  s:HashSet[(int,int)]
  a=Seq[H,W:char]
for h in 0..<H:
  for w in 0..<W:
    if S[h][w]=='#':
      var f=false
      for (dh,dw) in [(-1,0),(-1,1),(0,1),(1,1),(1,0),(1,-1),(0,-1),(-1,-1)]:
        let
          nh=h+dh
          nw=w+dw
        if nh in 0..<H and nw in 0..<W and S[nh][nw]=='.':
          f=true
      if f:
        s.incl((h,w))
        a[h][w]='#'
if s.len==0:
  echo Seq[H:".".repeat(W)].join("\n")
else:
  var c='.'
  while s.len>0:
    var ns:HashSet[(int,int)]
    for (h,w) in s:
      for (dh,dw) in [(-1,0),(-1,1),(0,1),(1,1),(1,0),(1,-1),(0,-1),(-1,-1)]:
        let
          nh=h+dh
          nw=w+dw
        if nh in 0..<H and nw in 0..<W and a[nh][nw]=='\0':
          a[nh][nw]=c
          ns.incl((nh,nw))
    s=ns
    if c=='.': c='#' else: c='.'
  echo (0..<H).mapIt(a[it].join).join("\n")
    