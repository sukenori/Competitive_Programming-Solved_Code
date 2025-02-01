#include<bits/stdc++.h>
#include<atcoder/all>
using namespace std;
using namespace atcoder;
using mint=modint1000000007;
int N,L;
mint dp[100001];
int main(){
  cin>>N>>L;
  dp[0]=1;
  for(int i=1;i<=N;i++){
    dp[i]+=dp[i-1];
    if(i>=L)dp[i]+=dp[i-L];
  }
  cout<<dp[N].val()<<endl;
}