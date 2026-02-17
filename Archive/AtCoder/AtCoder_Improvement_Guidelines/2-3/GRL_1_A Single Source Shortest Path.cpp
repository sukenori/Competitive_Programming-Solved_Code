#include<bits/stdc++.h>
using namespace std;
struct vertex{int to; int d;};
typedef pair<int,int> P;
#define INF 1e9+1
const int Vmax=100000;
int V,E,r,vi[Vmax]{},di[Vmax];
vector<vertex> G[Vmax];
int main(){
  cin>>V>>E>>r;
  int s,t,d; for(int i=0;i<E;i++){
    cin>>s>>t>>d; G[s].push_back({t,d});
  }
  priority_queue<P,vector<P>,greater<P>> q; q.push({0,r});
  fill(di,di+V,INF); di[r]=0;
  while(q.size()){
    int d,i; tie(d,i)=q.top(); vi[i]=1; q.pop();
    for(auto Gj:G[i])if(!vi[Gj.to]){
      di[Gj.to]=min(di[Gj.to],d+Gj.d); q.push({di[Gj.to],Gj.to});
    }
  }
  for(int i=0;i<V;i++){
    if(di[i]!=INF)cout<<di[i]<<endl; else cout<<"INF"<<endl;
  }
}