#include<bits/stdc++.h>
using namespace std;
struct route{int to; int co;};
typedef pair<int,int> P;
#define INF 5e7+1
int N,K;
const int Nmax=5000;
int C[Nmax+1],R[Nmax+1],c[Nmax+1];
vector<route>G[Nmax+1],aG[Nmax+1];
int main(){
  cin>>N>>K;
  for(int i=1;i<=N;i++)cin>>C[i]>>R[i];
  int A,B; for(int i=0;i<K;i++){
    cin>>A>>B;
    G[A].push_back({B,C[A]}); G[B].push_back({A,C[B]});
  }
  for(int i=1;i<=N;i++){
    queue<int>q{}; q.push(i); int d[N+1]{};
    while(q.size()){int j=q.front(); q.pop();
      if(d[j]<R[i])for(auto Gk:G[j])if(!d[Gk.to]){
        d[Gk.to]=d[j]+1; aG[i].push_back({Gk.to,C[i]});
        q.push(Gk.to);
      }
    }
  }
  fill(c,c+N+1,INF);
  priority_queue<P,vector<P>,greater<P>>pq; pq.push({0,1});
  while(pq.size()){
    int i,ci; tie(ci,i)=pq.top(); pq.pop();
    for(auto Gj:aG[i])if(ci+Gj.co<c[Gj.to]){
      c[Gj.to]=ci+Gj.co; pq.push({c[Gj.to],Gj.to});
    }
  }
  cout<<c[N]<<endl;
}