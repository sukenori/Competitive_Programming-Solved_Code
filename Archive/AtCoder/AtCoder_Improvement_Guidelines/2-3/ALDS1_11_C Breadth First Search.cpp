#include<bits/stdc++.h>
using namespace std;
int main(){
  int n; cin>>n;
  int G[101][101]={},d[101];
  for(int i=1;i<=n;i++){
    int u,k; cin>>u>>k;
    for(int j=1;j<=k;j++)cin>>G[u][j];
    d[u]=-1;
  }
  queue<int> q; q.push(1); d[1]=0;
  while(q.size()){
    int i=q.front(); q.pop();
    for(int j=1;j<=100;j++){
      int v=G[i][j];
      if(!v)break;
      if(d[v]<0){d[v]=d[i]+1; q.push(v);}
    }
  }
  for(int i=1;i<=n;i++)cout<<i<<" "<<d[i]<<endl;
}