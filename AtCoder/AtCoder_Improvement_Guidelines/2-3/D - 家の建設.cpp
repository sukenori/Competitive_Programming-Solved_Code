#include<bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=1;i<=n;i++)
int64_t H,W,K,V;
int64_t A[126][126];
int main(){
  cin>>H>>W>>K>>V;
  rep(i,H)rep(j,W){cin>>A[i][j];
    A[i][j]+=A[i-1][j]+A[i][j-1]-A[i-1][j-1];
  }
  int s=0; rep(i,H)rep(j,W)rep(k,H-i+1)rep(l,W-j+1)
  if(A[k+i-1][l+j-1]
  -A[k+i-1][l-1]-A[k-1][l+j-1]+A[k-1][l-1]
  +i*j*K<=V)s=max(s,i*j);
  cout<<s<<endl;
}