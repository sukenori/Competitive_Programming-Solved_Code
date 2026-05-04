include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let T=int.input
loop T:
  let A,B=string.input
  proc f(s:string):seq[char]=
    var d:Deque[int]
    for si in s:
      if si=='(': d.addLast(1)
      elif si=='x' and d.len>0 and (d[^1]==1 or d[^1]==2): d[^1]+=1
      elif si==')' and d.len>0 and d[^1]==3:
        d.popLast
        if d.len>0:
          if d[^1]==1: d[^1]+=2
          else:
            if d[^1]>=1: result.add('(')
            if d[^1]>=2: result.add('x')
            if d[^1]>=3: result.add('x')
            result.add('x');result.add('x')
      else:
        if d.len>0:
          if d[^1]>=1: result.add('(')
          if d[^1]>=2: result.add('x')
          if d[^1]>=3: result.add('x')
        result.add(si)
  dump (f(A),f(B))
  (f(A)==f(B)).asYesNo