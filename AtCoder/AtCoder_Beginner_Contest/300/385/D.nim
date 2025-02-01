include atcoder/header
let N,M=nextInt()
var
  S=newSeqWith(2,nextInt())
  H=newSeq[Table[int,HashSet[int]]](2)
for _ in 1..N:
  let Hi=newSeqWith(2,nextInt())
  for i in 0..1:
    if H[i].hasKey(Hi[i]):
      H[i][Hi[i]].incl(Hi[1-i])
    else:
      H[i][Hi[i]]=[Hi[1-i]].toHashSet
var a=0
for _ in 1..M:
  let
    D=nextString()
    C=nextInt()
    d=(if D=="U" or D=="D": 0 else: 1)
    w=(if D=="U" or D=="R": C else: 0)
  if H[d].hasKey(S[d]):
    var
      Hi=H[d][S[d]].toSeq.sorted
      i=Hi.lowerBound(S[1-d]+w-C)
    while i<Hi.lowerBound(S[1-d]+w):
      a+=1
      H[d][S[d]].excl(Hi[i])
      if H[1-d].hasKey(Hi[i]): H[1-d][Hi[i]].excl(S[d])
      i+=1
  S[1-d]+=w*2-C
echo S.join(" ")," ",a