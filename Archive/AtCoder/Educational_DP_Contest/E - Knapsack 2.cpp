#include<bits/stdc++.h>
using namespace std;
int N,W;
int w[101],v[101];
int64_t dp[101][100001];
int main(){
  cin>>N>>W;
  for(int i=1;i<=N;i++)cin>>w[i]>>v[i];
  fill(dp[0],dp[100],1e11); dp[0][0]=0;
  for(int i=0;i<N;i++)for(int j=0;j<=100000-v[i+1];j++){
    dp[i+1][j+v[i+1]]=dp[i][j]+w[i+1];
    dp[i+1][j]=min(dp[i+1][j],dp[i][j]);
  }
  int i=100000; while(dp[N][i]>W)i--;
  cout<<i<<endl;
}