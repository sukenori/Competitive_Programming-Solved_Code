#include<bits/stdc++.h>
using namespace std;
int N,W;
int w[101],v[101];
int64_t dp[101][100001];
int main(){
  cin>>N>>W;
  for(int i=1;i<=N;i++)cin>>w[i]>>v[i];
  for(int i=0;i<N;i++)for(int j=0;j<=W;j++){
    if(j+w[i+1]<=W)dp[i+1][j+w[i+1]]=dp[i][j]+v[i+1];
    dp[i+1][j]=max(dp[i+1][j],dp[i][j]);
  }
  cout<<dp[N][W]<<endl;
}