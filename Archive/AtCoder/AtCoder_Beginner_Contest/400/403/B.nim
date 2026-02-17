include atcoder/header
let T,U=nextString()
for i in 0..T.len-U.len:
  if (0..<U.len).toSeq.allIt(T[i+it]==U[it] or T[i+it]=='?'):
    echo "Yes"; quit()
echo "No"