#include<bits/stdc++.h>
using namespace std;
int main(){
  int N,M; cin>>N>>M;
  vector<int> P(N); for(int i=0; i<N; i++) cin>>P[i];
  P.push_back(0);
  vector<int> q;
  for(int Pi:P) for(int Pj:P) q.push_back(Pi+Pj);
  sort(q.begin(),q.end());
  int m=0;
  for(int qi:q){
    auto i=upper_bound(q.begin(),q.end(),M-qi);
    if(i==q.begin()) continue;
    else i--;
    m=max(m,*i+qi);
  }
  cout<<m<<endl;
}