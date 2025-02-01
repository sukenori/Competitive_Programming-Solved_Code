#include<bits/stdc++.h>
using namespace std;
int N,M;
vector<vector<int>>G[200001];
int main(){
  cin>>N>>M;
  int A,B,Xi,Yi;
  for(int i=0;i<M;i++){
    cin>>A>>B>>Xi>>Yi;
    G[A].push_back({B,Xi,Yi});
    G[B].push_back({A,-Xi,-Yi});
  }
  vector<int>a[N+1]; a[1]={0,0};
  int d[N+1]; d[1]=1;
  auto dfs[&](auto f,int i)->void {
    d[i]=1;
    for(int k=0;k<ssize(G[i]);k++){int j=G[i][k][0];
      if(!d[j]){
        a[j][0]=a[i][0]+G[k][0];
        a[j][1]=a[i][1]+G[k][1];
        dfs(f,j);
      }
    }
  };
  dfs(dfs,1);
  bool c=1; for(int i=1;i<=N)if(!d[i])c=0;
  if(!c)cout<<"undecidable"<<endl;
  else for(int i=1;i<=N;i++)cout<<a[i][0]<<' '<<a[i][1]<<endl;
}