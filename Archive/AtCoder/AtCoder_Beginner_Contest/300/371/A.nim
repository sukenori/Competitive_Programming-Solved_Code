include atcoder/header
let S1,S2,S3=nextString()
echo " CAB"[(S1==S2).int+(S2==S3).int*2]