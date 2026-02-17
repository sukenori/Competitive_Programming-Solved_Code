include "/workspaces/AtCoder-Nim/.Library/Template.nim"
let
  N,K,X=int.input
  A=Seq[N:int.input].sorted.reversed[N-K..^1].cumsummed.greaterEqual(X).first+1
echo if A>0: N-K+A else: -1