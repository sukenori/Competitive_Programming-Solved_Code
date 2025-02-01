#include<bits/stdc++.h>
using namespace std;
int V,E;
int G[15][15],dp[1<<15][15];
#define INF 1000*15
int main(){
  cin>>V>>E;
  fill(G[0],G[15],INF);
  int s,t,d; for(int i=0;i<E;i++){cin>>s>>t>>d; G[s][t]=d;}
  fill(dp[0],dp[1<<15],INF); dp[0][0]=0;
  for(int i=0;i<1<<V;i++)for(int j=0;j<V;j++)for(int k=0;k<V;k++)
  if(!(i>>k&1))dp[i|1<<k][k]=min(dp[i|1<<k][k],dp[i][j]+G[j][k]);
  int a=dp[(1<<V)-1][0]; cout<<(a<INF?a:-1)<<endl;
}