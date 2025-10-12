include atcoder/header
let S,T=nextString()
echo if (1..<S.len).toSeq.allIt(S[it].isLowerAscii or (S[it].isUpperAscii and S[it-1] in T)): "Yes" else: "No"