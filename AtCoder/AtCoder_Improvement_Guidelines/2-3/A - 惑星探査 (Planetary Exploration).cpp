#include<bits/stdc++.h>
using namespace std;
int M,N,K;
int m[4][1001][1001]{};
#define rep(i,n) for(int i=1;i<=n;i++)
int main(){
  cin>>M>>N>>K;
  rep(i,M)rep(j,N){char c; cin>>c;
    m[(c=='J')+(c=='O')*2+(c=='I')*3][i][j]++;
  }
  rep(i,3){
    rep(j,M)rep(k,N)m[i][j][k]+=m[i][j-1][k];
    rep(j,M)rep(k,N)m[i][j][k]+=m[i][j][k-1];
  }
  while(K--){int a,b,c,d; cin>>a>>b>>c>>d;
    rep(i,3){
      cout<<m[i][c][d]-m[i][a-1][d]-m[i][c][b-1]+m[i][a-1][b-1];
      cout<<(i<3?' ':'\n');
    }
  }
}