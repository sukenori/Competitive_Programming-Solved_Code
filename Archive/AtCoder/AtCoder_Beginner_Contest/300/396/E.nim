include atcoder/header
let N,M=nextInt()
var g=newSeqWith(N,newSeq[tuple[t,z:int]]())
for _ in 1..M:
  let
    X,Y=nextInt()-1
    Z=nextInt()
  g[X].add((Y,Z)); g[Y].add((X,Z))
var A=newSeq[int](N)
for i in 0..<(10.0^9).log2.ceil.int:
  var d=(-1).repeat(N)
  for j in 0..<N:
    if d[j] == -1:
      var v = @[@[j],@[]]
      proc dfs(j,z:int)=
        
        for k in g[j]:
          let nz=z xor (k.z shr i and 1)
          if d[k.t] == -1:
            d[k.z]=nz
            v[nz].add(k.t)
            dfs(k.t,nz)
          else: 
            if d[k.z]!=nz: echo -1; quit()
      dfs(j,0)
      for vi in v[(v[0].len>v[1].len).int]: A[vi]+=1 shl i
echo A.join(" ")