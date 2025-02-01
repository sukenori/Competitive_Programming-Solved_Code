include atcoder/extra/header/chaemon_header
var N=nextInt()
while N%2==0: N//=2
while N%3==0: N//=3
echo (if N==1: "Yes" else: "No")