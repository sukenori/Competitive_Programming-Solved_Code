#include<bits/stdc++.h>
using namespace std;
int N;
int a[3000];
int64_t dp[3001][3001];
int main(){
  cin>>N;
  for(int i=0;i<N;i++)cin>>a[i];
  for(int d=1;d<=N;d++)for(int l=0;l+d<=N;l++){
    int r=l+d;
    if((N-d)%2==0)
    dp[l][r]=max(dp[l+1][r]+a[l],dp[l][r-1]+a[r-1]);
    else
    dp[l][r]=min(dp[l+1][r]-a[l],dp[l][r-1]-a[r-1]);
  }
  cout<<dp[0][N]<<endl;
}