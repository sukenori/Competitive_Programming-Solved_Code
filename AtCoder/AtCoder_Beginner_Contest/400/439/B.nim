include "/workspaces/AtCoder-Nim/.Library/template.nim"
proc happy(x: int): int =
  ($x).toSeq.mapIt(it.parseInt ** 2).sum
var N = int.input
loop 10 ** 5:
  N = happy(N)
echo if N == 1: "Yes" else: "No"