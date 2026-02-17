include atcoder/header
let V1,V2,V3=nextInt()
proc f3(C2:seq[int],C3:seq[int]):int=
  max(0,[0,C2[0],C3[0]].min+7-[0,C2[0],C3[0]].max)*max(0,[0,C2[1],C3[1]].min+7-[0,C2[1],C3[1]].max)*max(0,[0,C2[2],C3[2]].min+7-[0,C2[2],C3[2]].max)
proc f2(C2:seq[int],C3:seq[int]):int=
  max(0,min(C2[0],C3[0])+7-max(C2[0],C3[0]))*max(0,min(C2[1],C3[1])+7-max(C2[1],C3[1]))*max(0,min(C2[2],C3[2])+7-max(C2[2],C3[2]))
iterator i():seq[int]=
  for i in -7..7:
    for j in -7..7:
      for k in -7..7:
        yield @[i,j,k]
let C1 = @[0,0,0]
for C2 in i():
  for C3 in i():
    let v3=f3(C2,C3)
    let v2=f2(C1,C2)+f2(C2,C3)+f2(C3,C1)-v3*3
    let v1=7^3*3-v2*2-v3*3
    if v1==V1 and v2==V2 and v3==V3:
      echo "Yes\n"&(C1&C2&C3).join(" ")
      quit()
echo "No"