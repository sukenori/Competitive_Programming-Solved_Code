include atcoder/header
let N=nextInt()
type
  SortedTable[K,V] {.importcpp:"std::map",header:"<map>"}=object
  SortedTableIt[K,V] {.importcpp:"std::map<'*0,'*1>::const_iterator"}=object
proc initSortedTable[K,V]():SortedTable[K,V] {.importcpp:"std::map<'*0,'*1>()",constructor}
template defIt(TIt:typedesc)=
  proc endIt[K,V](t:SortedTable[K,V]):SortedTableIt[K,V] {.importcpp:"#.end()"}
  proc prev[K,V](it:TIt[K,V],n:int):TIt[K,V] {.importcpp:"std::prev(#,#)"}
  proc `==`[K,V](a,b:TIt[K,V]):bool {.importcpp:"#==#",nodecl}
  proc key[K,V](it:TIt[K,V]):K {.importcpp:"#->first"}
  proc val[K,V](it:TIt[K,V]):V {.importcpp:"#->second"}
  proc `*`[K,V](it:TIt[K,V]):(K,V) {.importcpp:"(*#)"}
defIt(SortedTableIt)
proc `[]=`[K,V](t:var SortedTable[K,V],k:K,v:V) {.importcpp:"#[#]=#"}
proc `[]`[K,V](t:SortedTable[K,V],k:K):V {.importcpp:"#[#]".} 
proc lower_bound[K,V](t:SortedTable[K,V],k:K):SortedTableIt[K,V] {.importcpp:"#.lower_bound(@)"}
var
  x=initSortedTable[int,int]()
  a=int.inf
x[0]=int.inf
for _ in 1..N:
  let
    X=nextInt()
    it=x.lower_bound(X)
  if X-it.prev(1).key<it.prev(1).val:
    a += -it.prev(1).val+X-it.prev(1).key; x[it.prev(1).key]=X-it.prev(1).key
  if not (it==x.endIt) and it.key-X<it.val:
    a += -it.val+it.key-X; x[it.key]=it.key-X
  x[X]=if not (it==x.endIt): min(X-it.prev(1).key,it.key-X) else: X-it.prev(1).key
  a+=x[X]; echo a