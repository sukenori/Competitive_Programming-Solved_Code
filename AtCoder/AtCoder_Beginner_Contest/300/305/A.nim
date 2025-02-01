include atcoder/extra/header/chaemon_header
N:=nextInt()
var d:seq[(int,int)]
for i in 0..100>>5: d.add((abs(i-N),i))
echo d.min[1]