#include<bits/stdc++.h>
using namespace std;
int N,M;
int P[100];
set<int>F[100];
int main(){
  cin>>N>>M;
  for(int i=0;i<N;i++){
    cin>>P[i];
    int C; cin>>C; for(int j=0;j<C;j++){
      int Fi; cin>>Fi; F[i].insert(Fi);
    }
  }
  for(int i=0;i<N;i++)for(int j=0;j<N;j++){
    bool f1=1;
    if(P[i]<P[j])f1=0;
    for(int Fi:F[i])if(F[j].count(Fi)==0)f1=0;
    bool f2=0;
    if(P[i]>P[j])f2=1;
    for(int Fi:F[j])if(F[i].count(Fi)==0)f2=1;
    if(!f2)f1=0;
    if(f1){cout<<"Yes"<<endl; return 0;}
  }
  cout<<"No"<<endl;
}