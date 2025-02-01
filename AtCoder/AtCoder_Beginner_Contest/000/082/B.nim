include atcoder/header
let
  s=nextString().sorted()
  t=nextString().sorted(Descending)
echo if s.join("")<t.join(""): "Yes" else: "No"