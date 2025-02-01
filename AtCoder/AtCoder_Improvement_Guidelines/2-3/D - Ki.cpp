#include<bits/stdc++.h>
using namespace std;
vector<vector<int>> g(200000,vector<int>());
vector<int> c(200000);
void dfs(int i,int p){
  for(int gi:g[i]){
    if(gi==p)continue;
    else{c[gi]+=c[i]; dfs(gi,i);}
  }
}
int main(){
  int N,Q; cin>>N>>Q;
  int a,b;
  for(int i=0;i<N-1;i++){
    cin>>a>>b;
    g[a-1].push_back(b-1);
    g[b-1].push_back(a-1);
  }
  int p,x;
  while(Q--){
    cin>>p>>x; c[p-1]+=x;
  }
  dfs(0,-1);
  for(int i=0;i<N;i++)cout<<c[i]<<" \n"[i==N-1];
}