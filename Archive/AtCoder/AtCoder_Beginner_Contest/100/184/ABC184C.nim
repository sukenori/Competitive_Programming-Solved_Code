include atcoder/header
let
  r1,c1,r2,c2=nextInt()
  r=r2-r1
  c=c2-c1
if r==0 and c==0: echo 0
elif r+c==0 or r-c==0 or r.abs+c.abs<=3: echo 1
elif abs(r+c)<=3 or abs(r-c)<=3 or r.abs+c.abs<=6 or (r+c) mod 2==0: echo 2
else: echo 3