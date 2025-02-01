include atcoder/header
let S=nextString(); let n=S.len
var ll=' '; var li=n
var a=0
var i=n-1; while i>=0:
  let lc=if i+1<=n-1: S[i+1] else: ' '
  let c=S[i]
  let nc=if i-1>=0: S[i-1] else: ' '
  if lc==c and c!=nc:
    a+=max(0,li-1-(i+1))-S[i+2..<li].count(c)+(if c!=ll: n-1-(li-1) else: 0)
    ll=c; li=i
  i-=1
echo a