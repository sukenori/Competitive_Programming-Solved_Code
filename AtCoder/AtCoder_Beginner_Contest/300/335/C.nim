include atcoder/extra/header/chaemon_header
N:=nextInt()
x:=(1..N).toSeq.toDeque
y:=Seq[N:0].toDeque
for _ in 1..nextInt():
  if nextInt()==1:
    x0:=x[0]; y0:=y[0]
    case nextString():
      of "R": x0+=1
      of "L": x0-=1
      of "U": y0+=1
      else: y0-=1
    x.addFirst(x0); y.addFirst(y0)
  else:
    p:=nextInt()-1
    echo x[p]," ",y[p]