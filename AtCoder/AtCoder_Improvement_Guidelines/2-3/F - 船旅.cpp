#include<bits/stdc++.h>
using namespace std;
#define INF 1e8
struct route{int to; int co;};
typedef pair<int,int> P;
int n,k,fe[101];
vector<route> G[101];
int main(){
  cin>>n>>k;
  int o,f,t,c; bool fl=0; int pf=-1;
  while(k--){
    cin>>o;
    if(!o){
      cin>>f>>t;
      if(!(fl&&f==pf)){
        fill(fe,fe+101,INF); fe[f]=0;
        priority_queue<P,vector<P>,greater<P>> q; q.push({0,f});
        while(q.size()){
          int ci,i; tie(ci,i)=q.top(); q.pop();
          for(auto Gj:G[i])if(fe[Gj.to]>ci+Gj.co){
            fe[Gj.to]=ci+Gj.co; q.push({fe[Gj.to],Gj.to});
          }
        }
      }
      cout<<(fe[t]!=INF?fe[t]:-1)<<endl;
      fl=1;
    }
    else{
      cin>>f>>t>>c;
      G[f].push_back({t,c}); G[t].push_back({f,c});
      fl=0;
    }
  }
}