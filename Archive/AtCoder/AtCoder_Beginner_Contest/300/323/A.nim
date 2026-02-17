include atcoder/header
let S=nextString()
for i,Si in S:
  if i mod 2==1 and S[i]!='0': echo "No"; quit()
echo "Yes"