#include<bits/stdc++.h>
using namespace std;
#define INF 1e4*1e5
int N;
int h[100002],dp[100002];
int main(){
  cin>>N;
  for(int i=1;i<=N;i++)cin>>h[i];
  fill(dp,dp+N+2,INF); dp[1]=0;
  for(int i=1;i<N;i++){
  dp[i+2]=dp[i]+abs(h[i]-h[i+2]);
  dp[i+1]=min(dp[i+1],dp[i]+abs(h[i]-h[i+1]));
  }
  cout<<dp[N]<<endl;
}