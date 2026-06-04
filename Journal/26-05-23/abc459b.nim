include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  S=Seq[N:string.input]
var a=Seq[N:int]
for i in 0..<N:
  if 0 <= @(S[i][0]) and @(S[i][0]) <= 2: a[i]=2
  if 3 <= @(S[i][0]) and @(S[i][0]) <= 5: a[i]=3
  if 6 <= @(S[i][0]) and @(S[i][0]) <= 8: a[i]=4
  if 9 <= @(S[i][0]) and @(S[i][0]) <= 11: a[i]=5
  if 12 <= @(S[i][0]) and @(S[i][0]) <= 14: a[i]=6
  if 15 <= @(S[i][0]) and @(S[i][0]) <= 18: a[i]=7
  if 19 <= @(S[i][0]) and @(S[i][0]) <= 21: a[i]=8
  if 22 <= @(S[i][0]) and @(S[i][0]) <= 25: a[i]=9
echo a.join