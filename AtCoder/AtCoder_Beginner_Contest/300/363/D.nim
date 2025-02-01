include atcoder/header
var N=nextInt()-1
if N==0: echo 0
else:
  N-=1
  var n=1; while N-9*10^((n-1) div 2)>=0:
    N-=9*10^((n-1) div 2); n+=1
  let a=N+10^(((n+1) div 2)-1)
  echo $a&($a)[0..^(if n mod 2==0: 1 else: 2)].reversed.join