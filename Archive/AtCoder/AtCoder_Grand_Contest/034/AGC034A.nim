include atcoder/header
let N=nextInt()
let A,B,C,D=nextInt()-1
let S=nextString()
var f=true
if "##" in S[A..C] or "##" in S[B..D]: f=false
if D<C and "..." notin S[B-1..D+1]: f=false
echo if f: "Yes" else: "No"