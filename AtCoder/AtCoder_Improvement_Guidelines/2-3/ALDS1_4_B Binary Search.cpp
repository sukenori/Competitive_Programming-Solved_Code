#include<bits/stdc++.h>
using namespace std;
int main(){
  int n; cin>>n;
  vector<int> S(n); for(int i=0; i<n; i++) cin>>S[i];
  int q; cin>>q;
  vector<int> T(q); for(int i=0; i<q; i++) cin>>T[i];
  sort(S.begin(),S.end());
  int a=0;
  for(int i=0; i<q; i++) a+=binary_search(S.begin(),S.end(),T[i]);
  cout<<a<<endl;
}