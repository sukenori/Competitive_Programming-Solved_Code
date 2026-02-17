include atcoder/header
let S=nextString()
echo if S[0]=='<' and S[^1]=='>' and S[1..^2].allIt(it=='='): "Yes" else: "No"