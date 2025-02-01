#include <bits/stdc++.h>
#include <atcoder/all>
using namespace std;
using namespace atcoder;
int N,M;
vector<int>G[200000];
int main(){
  cin>>N>>M;
  dsu d(N);
  int u,v; for(int i=0;i<M;i++){
    cin>>u>>v; u--; v--;
    G[u].push_back(v),G[v].push_back(u);
    d.merge(u,v);
  }
  bool f=1; for(int i=0;i<N;i++)if(G[i].size()>2)f=0;
  cout<<(M==N-1&&f&&d.size(0)==N?"Yes":"No")<<endl;
}