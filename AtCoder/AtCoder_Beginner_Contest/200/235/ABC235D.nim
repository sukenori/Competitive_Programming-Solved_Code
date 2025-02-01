include atcoder/header
let a,N=nextInt()
import deques
var q=[N].toDeque
var d=[(N,0)].toTable
while q.len>0:
  let x=q.popFirst
  var nx:int
  nx=x div a
  if x mod a==0 and not d.hasKey(nx):
    d[nx]=d[x]+1; q.addLast(nx)
  let s=($x).toSeq
  nx=s.rotatedLeft(1).join.parseInt
  if s.len>1 and s[1]!='0' and not d.hasKey(nx):
    d[nx]=d[x]+1; q.addLast(nx)
echo if d.hasKey(1): d[1] else: -1