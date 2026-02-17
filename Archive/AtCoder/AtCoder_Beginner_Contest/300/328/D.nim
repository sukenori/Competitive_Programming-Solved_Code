include atcoder/extra/header/chaemon_header
a:=""
for Si in nextString():
  a &= $Si; a.removeSuffix("ABC")
echo a