#include<bits/stdc++.h>
using namespace std;
int N,dp[30001];
#define INF 3e4+1
int main(){
  cin>>N;
  fill(dp,dp+N,INF);
  int c; for(int i=0;i<N;i++){
    cin>>c;
    *lower_bound(dp,dp+N,c)=c;
  }
  cout<<N-(lower_bound(dp,dp+N,INF)-dp)<<endl;
}