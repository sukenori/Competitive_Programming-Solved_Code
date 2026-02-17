#include<bits/stdc++.h>
using namespace std;
int main(){
  int q; cin>>q;
  while(q--){
    string X,Y; cin>>X>>Y;
    int lx=X.size(),ly=Y.size(); int dp[lx+1][ly+1]{};
    for(int i=1;i<=lx;i++)for(int j=1;j<=ly;j++)
      dp[i][j]=max({dp[i-1][j],dp[i][j-1],
      X[i-1]==Y[j-1]?dp[i-1][j-1]+1:0});
    cout<<dp[lx][ly]<<endl;
  }
}