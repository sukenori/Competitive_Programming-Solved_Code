#include<bits/stdc++.h>
using namespace std;
int N,M;
set<int>G[400001];
int d[400001];
int main(){
  cin>>N>>M;
  for(int i=1;i<=N;i++){int A; cin>>A;
    for(int j=0;j<A;j++){int Sj; cin>>Sj;
      G[i].insert(N+Sj); G[N+Sj].insert(i);
    }
  }
  fill(d,d+N+M+1,-2);
  queue<int>q; q.push(N+1);
  while(q.size()){
    int i=q.front(); q.pop(); if(i==N+M)break;
    for(int Gj:G[i])if(d[Gj]==-2){d[Gj]=d[i]+1; q.push(Gj);}
  }
  cout<<d[N+M]/2<<endl;
}