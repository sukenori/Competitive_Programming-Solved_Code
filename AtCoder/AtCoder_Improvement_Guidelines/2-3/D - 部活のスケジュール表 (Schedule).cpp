#include<bits/stdc++.h>
using namespace std;
int N; string r;
int dp[1001][1<<3]{},M=10007;
int main(){
  cin>>N>>r;
  dp[0][1]=1;
  for(int i=1;i<=N;i++)for(int j=1;j<1<<3;j++)for(int k=1;k<1<<3;k++)
  if((j&k)&&((k>>(((string)"JOI").find(r[i-1])))&1))dp[i][k]+=dp[i-1][j]%=M;
  cout<<accumulate(dp[N],dp[N]+(1<<3),0)%M<<endl;
}