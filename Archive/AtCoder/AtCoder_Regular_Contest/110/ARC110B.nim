include atcoder/header
let N=nextInt()
let T=nextString()
if T=="1": echo 10^10*2
elif T=="11": echo 10^10
else:
  var a=ceilDiv(N,3)
  if "110".repeat(a).count(T)==0:
    a+=1
    if "110".repeat(a).count(T)==0:
      echo 0; quit()
  echo 10^10-(a-1)