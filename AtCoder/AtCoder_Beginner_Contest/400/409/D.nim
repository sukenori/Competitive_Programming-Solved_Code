include atcoder/header
let T=nextInt()
for _ in 1..T:
  let N=nextInt()
  var T=nextString().toSeq
  block b:
    for i in 0..<N-1:
      if T[i]>T[i+1]:
        for j in i+1..<N:
          if T[i]<T[j]:
            echo (T[0..i-1]&T[i..<j].rotatedLeft(1)&T[j..^1]).join
            break b
          elif j==N-1:
            echo (T[0..i-1]&T[i..^1].rotatedLeft(1)).join
            break b
    echo T.join