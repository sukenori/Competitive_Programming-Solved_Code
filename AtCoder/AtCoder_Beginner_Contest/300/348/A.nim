include atcoder/header
let N=nextInt()
echo (1..N).toSeq.mapIt(if it mod 3!=0: 'o' else: 'x').join