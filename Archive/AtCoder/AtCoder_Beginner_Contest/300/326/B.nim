include atcoder/extra/header/chaemon_header
N:=nextInt()
while true:
  if ((N//100)%10)*((N//10)%10)==N%10: echo N; quit()
  N+=1