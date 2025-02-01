#include<bits/stdc++.h>
#include<atcoder/all>
using namespace std;
using namespace atcoder;
int N,M,K,Q;
vector<int>G[200001];
set<pair<int,int>>s;
int main(){
  cin>>N>>M;
  dsu d(N+1);
  int u,v; for(int i=0;i<M;i++){
    cin>>u>>v; d.merge(u,v);
  }
  cin>>K; int x,y; for(int i=0;i<K;i++){
    cin>>x>>y; int lx=d.leader(x),ly=d.leader(y);
    s.insert({lx,ly}); s.insert({ly,lx});
  }
  cin>>Q; int p,q; while(Q--){
    cin>>p>>q;
    cout<<(!s.count({d.leader(p),d.leader(q)})?"Yes":"No")<<endl;
  }
}