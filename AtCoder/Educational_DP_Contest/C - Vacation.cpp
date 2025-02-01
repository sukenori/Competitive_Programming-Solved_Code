#include<bits/stdc++.h>
using namespace std;
int N;
int dp[100001][3];
int main(){
  cin>>N;
  int a,b,c; for(int i=1;i<=N;i++){
    cin>>a>>b>>c;
    dp[i][0]=max(dp[i-1][1],dp[i-1][2])+a;
    dp[i][1]=max(dp[i-1][2],dp[i-1][0])+b;
    dp[i][2]=max(dp[i-1][0],dp[i-1][1])+c;
  }
  cout<<max({dp[N][0],dp[N][1],dp[N][2]})<<endl;
}