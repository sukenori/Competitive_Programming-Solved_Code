include atcoder/extra/header/chaemon_header
let N,T,M=nextInt()
b:=Seq[N:HashSet[int]]
for _ in 1..M: b[nextInt()-1].incl(nextInt()-1)
t:=Seq[seq[int]]; a:=0
proc f(i:int)=
  if i==N:
    if t.len==T: a+=1
  else:
    for j in 0..<t.len:
      if t[j].allIt(i notin b[it]): 
        t[j].add(i); f(i+1); discard t[j].pop
    t.add(@[i]); f(i+1); discard t.pop
f(0)
echo a