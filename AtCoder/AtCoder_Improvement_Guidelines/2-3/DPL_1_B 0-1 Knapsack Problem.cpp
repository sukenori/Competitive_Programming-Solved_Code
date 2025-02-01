#include<bits/stdc++.h>
using namespace std;
int main(){
  int N,W; cin>>N>>W;
  int v,w,dp[W+1]={};
  for(int i=1;i<=N;i++){
    cin>>v>>w;
    for(int j=W;j>=w;j--)dp[j]=max(dp[j],dp[j-w]+v);
  }
  cout<<dp[W]<<endl;
}