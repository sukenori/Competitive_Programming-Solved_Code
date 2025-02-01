#include<bits/stdc++.h>
using namespace std;
int64_t N,M;
vector<int>G[200001];
int n[200001]; int64_t p,m;
void dfs(int i){
  for(int j:G[i]){
    if(!n[j]){
      n[j]=n[i]*(-1); p+=n[j]==1; m+=n[j]==-1; dfs(j);
    }
    else if(n[i]*n[j]!=-1){cout<<0<<endl; exit(0);}
  }
}
int main(){
  cin>>N>>M; int64_t a=N*(N-1)/2-M;
  int u,v; for(int i=0;i<M;i++){cin>>u>>v;
    G[u].push_back(v),G[v].push_back(u);
  }
  for(int i=1;i<=N;i++)if(!n[i]){
    n[i]=1,p=1,m=0; dfs(i);
    a-=p*(p-1)/2+m*(m-1)/2;
  }
  cout<<a<<endl;
}