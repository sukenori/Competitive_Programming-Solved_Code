include atcoder/extra/header/chaemon_header
let H,W=nextInt()
A:=Seq[H,W:nextInt()]
B:=Seq[H,W:nextInt()]
import atcoder/extra/other/algorithmutils
for h in (0..<H).toSeq.permutation:
  for w in (0..<W).toSeq.permutation:
    block b:
      for i,hi in h:
        for j,wj in w:
          if A[hi][wj]!=B[i][j]: break b
      proc f(s:seq):int=
        for i in 0..<s.len:
          for j in 0..<i:
            if s[i]<s[j]: result+=1
      echo f(h)+f(w); quit()
echo -1