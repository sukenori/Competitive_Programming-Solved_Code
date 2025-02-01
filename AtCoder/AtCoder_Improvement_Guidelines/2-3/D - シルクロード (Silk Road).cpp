#include<bits/stdc++.h>
using namespace std;
int main(){
  int N,M; cin>>N>>M;
  int D[N]; for(int &Di:D)cin>>Di;
  int C[M]; for(int &Ci:C)cin>>Ci;
  int dp[N+1]; fill(*&dp,*&dp+N+1,(int)1e9); dp[0]=0;
  for(int Ci:C)for(int j=N;j>=0;j--)
  dp[j]=min(dp[j],dp[j-1]+D[j-1]*Ci);
  cout<<dp[N]<<endl;
}