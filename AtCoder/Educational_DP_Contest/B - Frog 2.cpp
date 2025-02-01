#include<bits/stdc++.h>
using namespace std;
#define INF 1e4*1e5
int N,K;
int h[100001],dp[100001];
int main(){
  cin>>N>>K;
  for(int i=1;i<=N;i++)cin>>h[i];
  fill(dp,dp+N+2,INF); dp[1]=0;
  for(int i=1;i<N;i++)for(int j=1;j<=K;j++)if(i+j<=N)
  dp[i+j]=min(dp[i+j],dp[i]+abs(h[i]-h[i+j]));
  cout<<dp[N]<<endl;
}