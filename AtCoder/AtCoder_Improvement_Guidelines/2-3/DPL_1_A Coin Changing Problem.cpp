#include<bits/stdc++.h>
using namespace std;
int main(){
  int n,m; cin >>n>>m;
  int c,dp[50001];
  dp[0]=0; fill(*&dp+1,*&dp+50001,50000);
  for(int i=1;i<=m;i++){
    cin>>c;
    for(int j=c;j<=n;j++)dp[j]=min(dp[j],dp[j-c]+1);
  }
  cout<<dp[n]<<endl;
}