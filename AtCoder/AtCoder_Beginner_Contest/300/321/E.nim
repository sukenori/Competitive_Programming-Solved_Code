include atcoder/extra/header/chaemon_header
let T=nextInt(); for _ in 1..T:
  var N,X,K=nextInt()
  proc f(i,n:int):int=
    if log2(i.float).int+n>log2(N.float).int: result=0
    else: result=min(2^n,max(0,N-i*2^n+1))
  var lX,a:int
  for i in 0..K:
    if i==0: a=f(X,K)
    elif i==K: a+=1
    else:
      a+=f(lX+(lX%2==0).int-(lX%2==1).int,K-i-1)
    lX=X; X//=2; if X==0: break
  echo a