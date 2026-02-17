#include<bits/stdc++.h>
using namespace std;
int N,M;
int A[11][11],X[45],Y[45];
int main(){
  cin>>N;
  for(int i=1;i<=N;i++)for(int j=1;j<=N;j++)cin>>A[i][j];
  cin>>M;
  for(int i=0;i<M;i++)cin>>X[i]>>Y[i];
  vector<int>p; for(int i=1;i<=N;i++)p.push_back(i);
  int a=10001; do{
    bool f=0; for(int i=0;i<M;i++){
      auto Xi=ranges::find(p,X[i]),Yi=ranges::find(p,Y[i]);
      if(abs(Xi-Yi)==1)f=1;
    }
    if(!f){
      int s=0; for(int i=1;i<=N;i++)s+=A[p[i-1]][i];
      a=min(a,s);
    }
  }while(ranges::next_permutation(p).found);
  cout<<(a!=10001?a:-1)<<endl;
}