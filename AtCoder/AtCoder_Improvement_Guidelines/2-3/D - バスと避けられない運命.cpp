#include<bits/stdc++.h>
using namespace std;
#define INF 3e5+1
#define rep(i,n) for(int i=1;i<=n;i++)
int N,M;
int D[301][301]{};
int main(){
  cin>>N>>M;
  rep(i,N)rep(j,N)if(i!=j)D[i][j]=INF;
  int a,b,t; rep(i,M){cin>>a>>b>>t; D[a][b]=t; D[b][a]=t;}
  rep(k,N)rep(i,N)rep(j,N)
    D[i][j]=min(D[i][j],D[i][k]+D[k][j]);
  int ans=INF,m;
  rep(i,N){m=0; rep(j,N)m=max(m,D[i][j]); ans=min(ans,m);}
  cout<<ans<<endl;
}