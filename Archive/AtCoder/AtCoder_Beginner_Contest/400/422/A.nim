include atcoder/header
var S=nextString().split("-").mapIt(($it).parseInt)
S[1]+=1
if S[1]==9: S[0]+=1; S[1]=1
echo S.join("-")