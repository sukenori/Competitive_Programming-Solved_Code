#include<bits/stdc++.h>
using namespace std;
int w[301],dp[301][301];
int main(){
  while(1){
    int n; cin>>n; if(!n)break;
    for(int i=1;i<=n;i++)cin>>w[i];
    for(int d=2;d<=n;d++)for(int l=1;l<=n-(d-1);l++){int r=l+d-1;
      dp[l][r]=dp[l+1][r-1]==d-2&&abs(w[l]-w[r])<=1?d:dp[l+1][r-1];
      for(int m=l;m<r;m++)dp[l][r]=max(dp[l][r],dp[l][m]+dp[m+1][r]);
    }
  cout<<dp[1][n]<<endl;
  }
}