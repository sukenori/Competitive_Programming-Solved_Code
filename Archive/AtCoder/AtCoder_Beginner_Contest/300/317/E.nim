include atcoder/extra/header/chaemon_header
let H,W=nextInt()
var A=newSeqWith(H,"#"&nextString()&"#")
for i in [0,H+1]: A.insert("#".repeat(W+1),i)
var Sh,Sw,Gh,Gw:int
let dy=[0,1,0,-1]; let dx=[1,0,-1,0]
for i in 1..H:
  for j in 1..W:
    if (d:=">v<^".find(A[i][j]))!=(-1):
      var h=i; var w=j
      while true:
        h+=dy[d]; w+=dx[d]
        if A[h][w] in "#>v<^": break
        else: A[h][w]='!'
    if A[i][j]=='S': Sh=i; Sw=j
    if A[i][j]=='G': Gh=i; Gw=j
var
  q=[(Sh,Sw)].toDeque
  d=newSeqWith(H+1,newSeqWith(W+1,-1))
d[Sh][Sw]=0
while q.len>0:
  var ih,iw:int
  (ih,iw)=q.popFirst
  for j in 0..3:
    var jh=ih+dy[j]; var jw=iw+dx[j]
    if A[jh][jw] in ".SG" and d[jh][jw]==(-1):
      d[jh][jw]=d[ih][iw]+1
      q.addLast((jh,jw))
echo d[Gh][Gw]