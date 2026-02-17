#include<bits/stdc++.h>
using namespace std;
int main(){
  int D,N; cin>>D>>N;
  int T[D]; for(int &Ti:T)cin>>Ti;
  int A[N],B[N],C[N]; for(int i=0;i<N;i++)cin>>A[i]>>B[i]>>C[i];
  map<int,int>d; int v;
  for(int i=0;i<D;i++){
    map<int,int>td;
    for(int j=0;j<N;j++)if(A[j]<=T[i]&&T[i]<=B[j]){
      v=0; for(auto di:d)v=max(v,di.second+abs(di.first-C[j]));
      td[C[j]]=v;
    }
    d=td;
  }
  v=0; for(auto di:d)v=max(v,di.second);
  cout<<v<<endl;
}