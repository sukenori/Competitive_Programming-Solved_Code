include atcoder/header
let T=nextInt()
for _ in 1..T:
  var N2,N3,N4=nextInt()
  let c334=min(N3 div 2,N4)
  N3-=c334*2; N4-=c334
  let c3322=min(N3 div 2,N2 div 2)
  N2-=c3322*2
  let c244=min(N2,N4 div 2)
  N2-=c244; N4-=c244*2
  let c2224=min(N2 div 3,N4)
  N2-=c2224*3
  echo c334+c3322+c244+c2224+N2 div 5