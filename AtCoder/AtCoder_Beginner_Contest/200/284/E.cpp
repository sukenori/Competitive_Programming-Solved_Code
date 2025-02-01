#include<bits/stdc++.h>
using namespace std;
int N,M,K;
vector<int>G[200001];
bool V[200001];
void dfs(int i){
  if(K==1e6)return;
  V[i]=1; K++;
  for(int j:G[i])if(!V[j])dfs(j);
  V[i]=0;
}
int main(){
  cin>>N>>M;
  int u,v; for(int i=0;i<M;i++){cin>>u>>v;
    G[u].push_back(v),G[v].push_back(u);
  }
  dfs(1);
  cout<<K<<endl;
}