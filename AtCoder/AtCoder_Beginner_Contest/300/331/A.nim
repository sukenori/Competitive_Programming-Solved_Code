include atcoder/header
let M,D=nextInt()
var y,m,d=nextInt()
d+=1
if d>D: m+=1; d=1
if m>M: y+=1; m=1
echo y," ",m," ",d