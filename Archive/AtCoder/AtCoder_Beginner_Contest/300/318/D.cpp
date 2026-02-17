#include<bits/stdc++.h>
using namespace std;
int N;
int64_t D[17][17],dp[1<<16];
int main(){
  cin>>N;
  for(int i=0;i<N-1;i++)for(int j=i+1;j<N;j++)cin>>D[i][j];
  for(int i=0;i<1<<N;i++)
    for(int j=0;j<N-1;j++)for(int k=j+1;k<N;k++)
      if(!(i>>j&1)&&!(i>>k&1))
        dp[i|1<<j|1<<k]=max(dp[i|1<<j|1<<k],dp[i]+D[j][k]);
  cout<<dp[(1<<N)-1]<<endl;
}