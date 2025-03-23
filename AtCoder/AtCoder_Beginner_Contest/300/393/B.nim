include atcoder/header
let
  S=nextString()
  n=S.len
var a=0
for d in 1..(n-1) div 2:
  var i=0; while i+d*2<n:
    if $S[i]&($S[i+d])&($S[i+d*2])=="ABC": a+=1
    i+=1
echo a