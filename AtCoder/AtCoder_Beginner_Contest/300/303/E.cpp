#include<bits/stdc++.h>
using namespace std;
int N;
vector<int>G[200001];
int d[200001];
int main(){
  cin>>N;
  int u,v; for(int i=1;i<N;i++){
    cin>>u>>v; G[u].push_back(v); G[v].push_back(u);
  }
  int i=1; while(G[i].size()!=1)i++;
  queue<int>q; q.push(G[i][0]); d[G[i][0]]=1;
  while(q.size()){
    i=q.front(); q.pop();
    for(int j:G[i])if(!d[j]){d[j]=d[i]+1; q.push(j);}
  }
  multiset<int>a;
  for(int i=1;i<=N;i++)if(d[i]%3==1)a.insert(G[i].size());
  for(int ai:a)cout<<ai<<' ';
}