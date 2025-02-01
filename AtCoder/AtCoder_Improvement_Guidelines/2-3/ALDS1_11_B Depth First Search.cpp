#include<bits/stdc++.h>
using namespace std;
vector<vector<int>> v;
vector<int> d,f;
int t=0;
void dfs(int i){
  d[i]=t;
  for(int j=0; j<v[i].size(); j++)
    if(!d[v[i][j]-1]){t++; dfs(v[i][j]-1);}
  t++; f[i]=t;
}
int main(){
  int n; cin>>n;
  v.resize(n); d.resize(n); f.resize(n);
  int u,k;
  for(int i=0; i<n; i++){
    cin>>u>>k; v[i].resize(k);
    for(int j=0; j<k; j++) cin>>v[i][j];
  }
  int c=0;
  while(c<n-1){
    for(int i=0; i<n; i++){
      if(!d[i]){t++; dfs(i);}
      else c++;
    }
  }
  for(int i=0; i<n; i++) cout<<i+1<<" "<<d[i]<<" "<<f[i]<<endl;
}