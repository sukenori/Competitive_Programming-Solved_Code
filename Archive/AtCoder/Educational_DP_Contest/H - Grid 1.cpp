#include<bits/stdc++.h>
using namespace std;
int H,W,M=1e9+7;
string a[1001];
int64_t dp[1001][1001];
int main(){
  cin>>H>>W;
  for(int i=1;i<=H;i++){cin>>a[i]; a[i]='#'+a[i];}
  dp[1][1]=1;
  for(int i=1;i<=H;i++)for(int j=1;j<=W;j++){
  if(j+1<=W&&a[i][j+1]=='.')
    dp[i][j+1]=(dp[i][j]+dp[i][j+1])%M;
  if(i+1<=H&&a[i+1][j]=='.')
    dp[i+1][j]=(dp[i][j]+dp[i+1][j])%M;
  }
  cout<<dp[H][W]<<endl;
}