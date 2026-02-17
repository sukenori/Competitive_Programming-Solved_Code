#include<bits/stdc++.h>
using namespace std;
int N,M,K;
vector<int>G[200001];
int d[200001];
int main(){
  cin>>N>>M>>K;
  int a,b; for(int i=0;i<M;i++){
    cin>>a>>b; G[a].push_back(b); G[b].push_back(a); 
  }
  priority_queue<pair<int,int>>q;
  int p,h; for(int i=0;i<K;i++){
    cin>>p>>h; q.push({h,p});
  }
  fill(d+1,d+1+N,-1);
  while(q.size()){
    int hi,pi; tie(hi,pi)=q.top(); q.pop(); 
    if(d[pi]==-1){d[pi]=hi; for(int np:G[pi])
      if(hi-1>d[np])q.push({hi-1,np});
    }
  }
  cout<<N-count(d+1,d+1+N,-1)<<endl;
  for(int i=1;i<=N;i++)if(d[i]!=-1)cout<<i<<' ';
}