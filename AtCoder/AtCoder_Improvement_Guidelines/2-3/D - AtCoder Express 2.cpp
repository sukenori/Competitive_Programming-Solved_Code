#include<bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=1;i<=n;i++)
int N,M,Q;
int t[501][501];
int main(){
  cin>>N>>M>>Q;
  int L,R; rep(i,M){cin>>L>>R; t[L][R]++;}
  rep(i,N)rep(j,N)
    t[i][j]+=t[i-1][j]+t[i][j-1]-t[i-1][j-1];
  int p,q; rep(i,Q){
    cin>>p>>q;
    cout<<t[q][q]-t[q][p-1]-t[p-1][q]+t[p-1][p-1]<<endl;
  }
}