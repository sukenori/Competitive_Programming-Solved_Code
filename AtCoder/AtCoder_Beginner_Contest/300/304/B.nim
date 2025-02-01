include atcoder/extra/header/chaemon_header
N:=nextString()
echo N[0..<min(3,N.len)]&"0".repeat(max(N.len-3,0))