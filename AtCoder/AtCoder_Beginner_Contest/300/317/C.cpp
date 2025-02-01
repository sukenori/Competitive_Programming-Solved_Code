#include<bits/stdc++.h>
using namespace std;
int N,M;
vector<pair<int,int>>G[11];
int d[11],a=0;
int main(){
  cin>>N>>M;
  int A,B,C; for(int i=0;i<M;i++){
    cin>>A>>B>>C;
    G[A].push_back({B,C}); G[B].push_back({A,C});
  }
  function<void(int)>dfs=[&](int i){
    for(auto j:G[i])if(d[j.first]<0){
      d[j.first]=d[i]+j.second;
      a=max(a,d[j.first]);
      dfs(j.first);
      d[j.first]=-1;
    }
  };
  for(int i=1;i<=N;i++){
    fill(d+1,d+N+1,-1); d[i]=0; dfs(i);
    }
  cout<<a<<endl;
}