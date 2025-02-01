#include<bits/stdc++.h>
using namespace std;
int N,M=1e9+7;
vector<int>G[200001];
struct node{int p; int s;}s[200001];
int64_t p2[200001];
void dfs(int u){
  s[u].s=1;
  for(int v:G[u])if(!s[v].s)
    dfs(v),s[v].p=u,s[u].s+=s[v].s;
}
int main(){
  cin>>N;
  for(int i=0;i<N-1;i++){int A,B; cin>>A>>B;
    G[A].push_back(B),G[B].push_back(A);
  }
  s[1].p=0; dfs(1);
  p2[0]=1; for(int i=1;i<=N;i++)p2[i]=(p2[i-1]*2)%M;
  int64_t a=0; for(int u=1;u<=N;u++){
    int64_t c=0; for(int v:G[u]){
      if(v!=s[u].p)c=(c+p2[s[v].s]-1)%M;
      else c=(c+p2[N-s[u].s]-1)%M;
    }
    a=(a+p2[N-1]-1-c+M)%M;
  }
  for(int64_t d=p2[N],i=M-2;i>0;i>>=1){
    if(i&1)a=a*d%M;
    d=d*d%M;
  }
  cout<<a<<endl;
}