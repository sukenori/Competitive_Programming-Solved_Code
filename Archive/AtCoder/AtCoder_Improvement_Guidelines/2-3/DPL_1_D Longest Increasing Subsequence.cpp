#include<bits/stdc++.h>
using namespace std;
int n,dp[100000];
#define INF 1e9+1
int main(){
  cin>>n;
  fill(dp,dp+n,INF);
  int a; for(int i=0;i<n;i++){
    cin>>a;
    *lower_bound(dp,dp+n,a)=a;
  }
  cout<<lower_bound(dp,dp+n,INF)-dp<<endl;
}