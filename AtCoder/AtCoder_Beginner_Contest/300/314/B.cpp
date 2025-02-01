#include<bits/stdc++.h>
using namespace std;
int N,X;
vector<pair<int,int>>C[37];
int main(){
  cin>>N;
  for(int i=1;i<=N;i++){
    int Ci; cin>>Ci;
    int Ai; for(int j=0;j<Ci;j++){
      cin>>Ai; C[Ai].push_back({Ci,i});
    }
  }
  cin>>X; if(C[X].size()==0){cout<<0<<endl; cout<<endl; exit(0);}
  sort(C[X].begin(),C[X].end());
  int m=C[X][0].first;
  set<int>a{};
  for(auto Ci:C[X])if(Ci.first==m)a.insert(Ci.second);
  cout<<a.size()<<endl;
  for(int ai:a)cout<<ai<<' ';
} 