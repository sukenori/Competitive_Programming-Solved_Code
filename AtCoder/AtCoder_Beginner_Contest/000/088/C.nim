include atcoder/header
let c=newSeqWith(3,newSeqWith(3,nextInt()))
echo if (0..1).toSeq.allit(c[it][0]-c[it+1][0]==c[it][1]-c[it+1][1] and c[it][1]-c[it+1][1]==c[it][2]-c[it+1][2]) and (0..1).toSeq.allit(c[0][it]-c[0][it+1]==c[1][it]-c[1][it+1] and c[1][it]-c[1][it+1]==c[2][it]-c[2][it+1]): "Yes" else: "No"