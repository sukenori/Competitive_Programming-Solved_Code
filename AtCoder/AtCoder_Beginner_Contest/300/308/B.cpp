#include<bits/stdc++.h>
using namespace std;
int N,M;
string C[100],D[100];
int P[100];
int main(){
  cin>>N>>M;
  for(int i=0;i<N;i++)cin>>C[i];
  for(int i=0;i<M;i++)cin>>D[i];
  int P0; cin>>P0; for(int i=0;i<M;i++)cin>>P[i];
  int s=0;
  for(int i=0;i<N;i++){
    if(count(D,D+M,C[i])>0)s+=P[find(D,D+M,C[i])-D];
    else s+=P0;
  }
  cout<<s<<endl;
}