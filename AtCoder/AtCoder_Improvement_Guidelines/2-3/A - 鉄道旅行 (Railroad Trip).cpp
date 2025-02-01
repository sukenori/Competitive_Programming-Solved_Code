#include<bits/stdc++.h>
using namespace std;
#define rep(f,t) for(int i=f;i<=t;i++)
int N,M;
int64_t P[100002]{};
int main(){
  cin>>N>>M;
  int Pi,nP; cin>>Pi; rep(2,M){cin>>nP;
    P[min(Pi,nP)]++; P[max(Pi,nP)]--; Pi=nP;
  }
  rep(2,N)P[i]+=P[i-1];
  int64_t s=0,A,B,C; rep(1,N-1){
    cin>>A>>B>>C; s+=min(A*P[i],B*P[i]+C);
  }
  cout<<s<<endl;
}