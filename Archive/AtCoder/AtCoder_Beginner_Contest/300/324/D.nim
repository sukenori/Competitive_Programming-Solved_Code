include atcoder/header
let
  N=nextInt()
  S=nextString().sorted
var a=0
for i in 0..(10^N).float.sqrt.ceil.int:
  if ($(i^2)).align(N,'0').sorted==S: a+=1
echo a