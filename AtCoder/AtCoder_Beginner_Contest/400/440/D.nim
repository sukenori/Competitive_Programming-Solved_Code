include "/workspaces/AtCoder-Nim/.Library/Template.nim"
include "/workspaces/AtCoder-Nim/.Library/Algorithm/BinarySearch.nim"
let
  N, Q = int.input
  A = Seq[N: int.input].sorted
loop Q:
  let X, Y = int.input
  echo X + minLeftIt(0 .. 2 * 10 ^ 9,
    it - (A.greaterEqual(X).count - A.greater(X + it).count) >= Y - 1)