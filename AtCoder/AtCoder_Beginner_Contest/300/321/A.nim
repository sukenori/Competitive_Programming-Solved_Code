include atcoder/header
let N=nextString()
for i in 1..<N.len:
  if N[i-1]<=N[i]: echo "No"; quit()
echo "Yes"