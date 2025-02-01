include atcoder/header
let N,H,W=nextInt()
var t=newSeq[(int,int)](N)
for i in 0..<N:
  let A,B=nextInt()-1
  t[i]=(A,B)
var o=(0..<N).toSeq
while true:
  for r in 0..<1 shl N:
    var f=newSeqWith(H,newSeqWith(W,0))
    for i,oi in o:
      var (A,B)=t[oi]
      if (r shr i and 1)==1: swap(A,B)
      block p:
        for h in 0..<H:
          for w in 0..<W:
            if f[h][w]==0:
              if h+A<H and w+B<W and f.mapIt(it[w..w+B].sum)[h..h+A].sum==0:
                for a in 0..A:
                  for b in 0..B:
                    f[h+a][w+b]=1
                break p
              else: break p
      if f.mapIt(it.sum).sum==H*W: echo "Yes"; quit()
  if not o.nextPermutation(): break
echo "No"