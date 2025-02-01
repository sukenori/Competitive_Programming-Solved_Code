#include<bits/stdc++.h>
using namespace std;
#define all(x) (x).begin(),(x).end()
int main(){
  int N; cin>>N;
  vector<int> A(N),B(N),C(N);
  for(int &i:A) cin>>i;
  for(int &i:B) cin>>i;
  for(int &i:C) cin>>i;
  sort(all(A)); sort(all(C));
  int64_t c=0;
  for(int Bi:B){
    auto Ai=lower_bound(all(A),Bi);
    auto Ci=upper_bound(all(C),Bi);
    c+=(int64_t)(Ai-A.begin())*(int64_t)(C.end()-Ci);
  }
  cout<<c<<endl;
}