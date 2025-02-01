include atcoder/extra/header/chaemon_header
N:=nextInt()
S:=nextString()
c:=Seq[26:0]
l:=0
while l<N:
  r:=l+1
  while r<N and S[l]==S[r]: r+=1
  c[S[l]-'a'].max=r-l
  l=r
echo c.sum