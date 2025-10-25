include atcoder/header
let S,A,B,X=nextInt()
echo S*(A*(X div (A+B))+min(X mod (A+B),A))