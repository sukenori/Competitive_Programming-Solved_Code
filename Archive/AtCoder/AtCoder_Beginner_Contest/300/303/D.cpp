#include<bits/stdc++.h>
using namespace std;
int64_t X,Y,Z;
string S;
int64_t dp[2][300001];
#define INF 3e14
int main(){
  cin>>X>>Y>>Z>>S; int n=S.size();
  fill(dp[0],dp[2],INF); dp[0][0]=0;
  for(int i=1;i<=n;i++){
    if(S[i-1]=='a'){
      dp[0][i]=min({dp[0][i],dp[0][i-1]+X,dp[1][i-1]+Z+X});
      dp[1][i]=min({dp[1][i],dp[1][i-1]+Y,dp[0][i-1]+Z+Y});
    }
    else{
      dp[0][i]=min({dp[0][i],dp[0][i-1]+Y,dp[1][i-1]+Z+Y});
      dp[1][i]=min({dp[1][i],dp[1][i-1]+X,dp[0][i-1]+Z+X});
    }
  }
  cout<<min(dp[0][n],dp[1][n])<<endl;
}