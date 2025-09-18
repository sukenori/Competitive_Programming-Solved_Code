include atcoder/header
var a=newSeq[int](10)
a[0]=nextInt()
a[1]=nextInt()
for i in 2..9:
  a[i]=(($(a[i-1]+a[i-2])).reversed.join).parseInt
echo a[9]