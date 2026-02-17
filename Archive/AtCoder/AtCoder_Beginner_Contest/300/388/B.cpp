#include <bits/stdc++.h>
using namespace std;

vector<int> solve(int N,int D,vector<int> T,vector<int> L) {
  //
  vector<int> ans(D);
  for(int i: views::iota(0,D)) for(int j: views::iota(0,N))
    ans[i]=max(ans[i],T[j]*(L[j]+i+1));
  return ans;
}

int main() {
  //input
  int N,D; cin>>N>>D;
  vector<int> T(N),L(N);
  for(int i: views::iota(0,N)) cin>>T[i]>>L[i];

  //solve
  auto ans=solve(N,D,T,L);

  //output
  for(int i: views::iota(0,D)) {if(0<i) cout<<endl; cout<<ans[i];}
  cout<<endl;
}