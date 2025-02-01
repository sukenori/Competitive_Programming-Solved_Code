include atcoder/extra/header/chaemon_header
S:=nextString()
t:=S.toCountTable
for i in 'a'..'z':
  if t[i]==t.values.toSeq.max:
    echo i; break