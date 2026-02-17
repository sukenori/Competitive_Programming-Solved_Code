#include<bits/stdc++.h>
using namespace std;
int K,N,D;
int64_t dp[101][100];
int main(){
  cin>>N>>K>>D;
  fill(dp[0],dp[101],-1); dp[0][0]=0;
  int64_t a; for(int i=0;i<N;i++){
    cin>>a;
    for(int j=K;j>=0;j--)for(int k=0;k<D;k++){
      if(dp[j][k]>=0)dp[j+1][(k+a)%D]
        =max(dp[j+1][(k+a)%D],dp[j][k]+a);
    }
  }
  cout<<dp[K][0]<<endl;
}