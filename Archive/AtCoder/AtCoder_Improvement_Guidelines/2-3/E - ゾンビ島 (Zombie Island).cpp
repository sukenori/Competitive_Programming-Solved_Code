#include<bits/stdc++.h>
using namespace std;
typedef pair<int64_t,int> Pa;
#define INF 1e10+1
int N,M,K,S,P,Q;
const int Nmax=100000;
vector<vector<int>>G(Nmax+1);
int C[Nmax],d[Nmax]{};
int64_t c[Nmax];
queue<int>q;
int main(){
  cin>>N>>M>>K>>S>>P>>Q;
  fill(d,d+N+1,N+1);
  int Ci; for(int i=0;i<K;i++){
    cin>>Ci; C[i]=Ci; q.push(C[i]); d[Ci]=0;
  }
  int A,B; for(int i=0;i<M;i++){
    cin>>A>>B; G[A].push_back(B); G[B].push_back(A);
  }
  while(q.size()){
    int i=q.front(); q.pop();
    for(int Gj:G[i])if(d[Gj]==N+1){d[Gj]=d[i]+1; q.push(Gj);}
  }
  fill(c,c+Nmax,INF);
  priority_queue<Pa,vector<Pa>,greater<Pa>>pq; pq.push({0LL,1});
  while(pq.size()){
    int64_t ci; int i; tie(ci,i)=pq.top(); pq.pop();
    for(int Gj:G[i]){int64_t cj=ci+(Gj!=N)*(d[Gj]<=S?Q:P);
      if(d[Gj]&&c[Gj]>cj){c[Gj]=cj; pq.push({c[Gj],Gj});}
    }
  }
  cout<<c[N]<<endl;
}