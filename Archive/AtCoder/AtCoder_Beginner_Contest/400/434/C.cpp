#include <bits/stdc++.h>
using namespace std;
int main(){
  int T; cin>>T;
  for(int c: views::iota(0,T)){
    int N,H; cin>>N>>H;
    int t,l,u; t=0; l=u=H;
    bool f; f=true;
    for(int i: views::iota(0,N)){
      int ti,li,ui; cin>>ti>>li>>ui;
      l=max({0,l-(ti-t),li});
      u=min({u+(ti-t),ui});
      t=ti;
      if(l>u) f=false;
    }
    cout<<(f? "Yes": "No")<<endl;
  }
  return 0;
}