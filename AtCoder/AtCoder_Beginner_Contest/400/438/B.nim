include "/workspaces/AtCoder-Nim/.Library/template.nim"
let
  N, M = int.input
  S, T = string.input.mapIt(it.parseInt)
echo:
  minOf(i, 0 .. N - M):
    sumOf(j, 0 ..< M):
      (S[j+i] - T[j]).floorMod 10