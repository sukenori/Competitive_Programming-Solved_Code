#include<bits/stdc++.h>
using namespace std;
int main(){
  istringstream s("tourist 3858 ksun48 3679 Benq 3658 Um_nik 3648 apiad 3638 Stonefeang 3630 ecnerwala 3613 mnbvmar 3555 newbiedmy 3516 semiexp 3481");
  string h; int r; map<string,int>m;
  for(int i=0;i<10;i++){s>>h>>r; m[h]=r;}
  string S; cin>>S;
  cout<<m[S]<<endl;
}