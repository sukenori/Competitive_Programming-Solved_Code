include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let T=int.input
loop T:
  let
    S=string.input
    c=S.toCountTable
    n=S.len
  var t:seq[(int,char)]
  for k,v in c: t.add((-v,k))
  t.sort
  if -t[0][0]>n.ceilDiv(2): echo "No"
  else:
    echo "Yes"
    var d:string
    for (v,k) in t: d&=k.repeat(-v)
    var j=0
    var a=Seq[n:char]
    for i in 0..((n-1) div 2):
      a[i*2]=d[j]
      j+=1
    for i in 0..(n-1) div 2:
      if i*2+1<n:
        a[i*2+1]=d[j]
        j+=1
    echo a.join