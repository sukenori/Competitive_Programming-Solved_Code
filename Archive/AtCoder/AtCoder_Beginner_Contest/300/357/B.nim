include atcoder/header
var S=nextString().toSeq
if S.countIt(it.isUpperAscii)*2>S.len:
  echo S.mapIt(it.toUpperAscii).join
else:
  echo S.mapIt(it.toLowerAscii).join