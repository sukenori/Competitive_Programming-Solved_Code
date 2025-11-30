include atcoder/header
let T=nextInt()
for _ in 1..T:
  let N,H=nextInt()
  var
    t=0
    l,u=H
    f=true
  for i in 0..<N:
    let
      ti,li,ui=nextInt()
      nl=[0,l-(ti-t),li].max
      nu=min(u+(ti-t),ui)
    if nl>nu: f=false
    t=ti; l=nl; u=nu
  echo if f: "Yes" else: "No"