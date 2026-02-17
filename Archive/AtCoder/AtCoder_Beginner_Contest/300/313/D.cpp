#include<bits/stdc++.h>
using namespace std;
int N,K;
bool A[1001];
int main(){
  cin>>N>>K;
  bool sK[K+1],ssK=0; for(int i=1;i<=K+1;i++){cout<<'?';
    for(int j=1;j<=K+1;j++)if(j!=i)cout<<' '<<j;
    cout<<endl;
    cin>>sK[i]; ssK^=sK[i];
  }
  for(int i=1;i<=K+1;i++)A[i]=ssK^sK[i];
  if(K+1<N){bool sKi; for(int i=K+2;i<=N;i++){cout<<'?';
    for(int j=3;j<=K+1;j++)cout<<' '<<j;
    cout<<' '<<i<<endl;
    cin>>sKi; A[i]=sKi^(sK[1]^A[2]);
  }}
  cout<<'!'; for(int i=1;i<=N;i++)cout<<' '<<A[i];
  cout<<endl;
}