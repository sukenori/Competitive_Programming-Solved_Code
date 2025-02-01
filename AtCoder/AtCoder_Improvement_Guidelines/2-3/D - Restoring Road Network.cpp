#include<bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0;i<n;i++)
int N;
int A[300][300];
int main(){
  cin>>N;
  rep(i,N)rep(j,N)cin>>A[i][j];
  bool af=1; int64_t s=0;
  rep(i,N)rep(j,N){
    bool f=1; rep(k,N){
      if(A[i][k]+A[k][j]<A[i][j])af=0;
      if(A[i][k]>0&&A[k][j]>0&&A[i][j]==A[i][k]+A[k][j])f=0;
    }
    if(f)s+=A[i][j]; 
  }
  cout<<(af?s/2:-1)<<endl;
}