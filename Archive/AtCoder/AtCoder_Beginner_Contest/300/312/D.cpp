#include<bits/stdc++.h>
using namespace std;
string S;
int64_t dp[3001][1501],m=998244353;
int main(){
  cin>>S;
  int n=S.size(); dp[0][0]=1;
  for(int i=1;i<=n;i++)for(int j=0;j<=n/2;j++){
    if(j>0&&S[i-1]!=')')dp[i][j]+=dp[i-1][j-1];
    if(j<1500&&S[i-1]!='(')dp[i][j]+=dp[i-1][j+1];
    dp[i][j]=dp[i][j]%m;
  }
  cout<<dp[n][0]<<endl;
}