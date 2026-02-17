#include<bits/stdc++.h>
using namespace std;
int N;
int X[300001];
int64_t Y[300001];
int64_t dp[300001][2];
int main(){
  cin>>N;
  for(int i=1;i<=N;i++)cin>>X[i]>>Y[i];
  for(int i=1;i<=N;i++){
    dp[i][0]=dp[i-1][0];
    dp[i][1]=dp[i-1][1];
    if(X[i]==0)dp[i][0]=max({dp[i-1][0]+Y[i],dp[i-1][1]+Y[i],dp[i][0]});
    else dp[i][1]=max({dp[i-1][0]+Y[i],dp[i][1]});
  }
  cout<<max(dp[N][0],dp[N][1])<<endl;
}