include atcoder/header
var a=newSeqWith(3,nextInt()).sorted
echo if a[0]+a[1]==a[2] or a.toHashSet.len==1: "Yes" else: "No"