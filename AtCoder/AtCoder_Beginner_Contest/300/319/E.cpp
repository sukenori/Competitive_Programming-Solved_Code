#include<bits/stdc++.h>
using namespace std;
int N;
int64_t X,Y,P[100000],T[100000];
int main(){
  cin>>N>>X>>Y;
  for(int i=0;i<N-1;i++)cin>>P[i]>>T[i];
  int l=2*3*2*5*7*2; int64_t t[l];
  for(int i=0;i<l;i++){
    t[i]=i+X;
    for(int j=0;j<N-1;j++)t[i]+=(t[i]%P[j]?P[j]-t[i]%P[j]:0)+T[j];
    t[i]+=Y;
  }
  int Q; cin>>Q; while(Q--){
    int q; cin>>q; cout<<q-q%l+t[q%l]<<endl;
  }
}