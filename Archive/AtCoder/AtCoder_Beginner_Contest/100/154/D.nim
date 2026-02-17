include atcoder/header
let
  N,K=nextInt()
  p=(@[0.0]&newSeqWith(N,nextFloat()).mapIt((1.0+it)/2.0)).cumsummed
echo (0..N-K).toSeq.mapIt(p[it+K]-p[it]).max