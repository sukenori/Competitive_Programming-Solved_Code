include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
var X=int.input
let Q=int.input
var l,h:HeapQueue[int]
for _ in 1..Q:
  let A,B=int.input
  if A<X and B<X:
    l.push(-A); l.push(-B)
    h.push(X)
    X = -l.pop
  elif X<A and X<B:
    h.push(A); h.push(B)
    l.push(-X)
    X = h.pop
  else:
    if A<=B: l.push(-A); h.push(B)
    else: l.push(-B); h.push(A)
  echo X