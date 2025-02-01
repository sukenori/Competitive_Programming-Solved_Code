include atcoder/header
let
  N,X,Y=nextInt()
  A=newSeqWith(N,nextInt()).sorted(Descending).cumsummed
  B=newSeqWith(N,nextInt()).sorted(Descending).cumsummed
echo [A.upperBound(X)+1,B.upperBound(Y)+1,N].min