include atcoder/header
let Rt,Ct,Ra,Ca,N,M,L=nextInt()
import deques
var S,T:Deque[(char,int)]
for i in 0..<M: S.addLast((nextString()[0],nextInt()))
for i in 0..<L: T.addLast((nextString()[0],nextInt()))
var
  a=0
  r=Ra-Rt
  c=Ca-Ct
while S.len>0:
  let
    (Sc,Sd)=S.popFirst
    (Tc,Td)=T.popFirst
    d=min(Sd,Td)
    (Ti,Si)=("UDLR".find(Tc),"UDLR".find(Sc))
    dr=[-1,1,0,0][Ti]-[-1,1,0,0][Si]
    dc=[0,0,-1,1][Ti]-[0,0,-1,1][Si]
  if (r,c)==(0,0) and (dr,dc)==(0,0): a+=d
  var rr,rc:int
  if dr!=0:
    rr=(-r) div dr
    if (c,dc)==(0,0) and (-r) mod dr==0 and rr in 1..d: a+=1
  if dc!=0:
    rc=(-c) div dc
    if (r,dr)==(0,0) and (-c) mod dc==0 and rc in 1..d: a+=1
  if rr==rc and rr in 1..d: a+=1
  if Td>d: T.addFirst((Tc,Td-d))
  elif Sd>d: S.addFirst((Sc,Sd-d))
  r+=dr*d; c+=dc*d
echo a