#include<bits/stdc++.h>
using namespace std;
int64_t N,D,P;
int64_t F[200000];
int main(){
  cin>>N>>D>>P;
  for(int i=0;i<N;i++)cin>>F[i];
  sort(F,F+N,greater<int64_t>());
  int i=0; int64_t a=0; while(1){
    int64_t s=0; for(int j=i;j<min(i+D,N);j++)s+=F[j];
    if(s>=P){a+=P; i=min(i+D,N);}
    else break;
  }
  for(int j=i;j<N;j++)a+=F[j];
  cout<<a<<endl;
}