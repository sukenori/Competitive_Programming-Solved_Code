#include<bits/stdc++.h>
using namespace std;
int dp[3001][3001];
int main(){
  string s,t; cin>>s>>t;
  for(int i=1;i<=s.size();i++)
  for(int j=1;j<=t.size();j++)
    if(s[i-1]==t[j-1])dp[i][j]=dp[i-1][j-1]+1;
    else dp[i][j]=max(dp[i-1][j],dp[i][j-1]);
  string a; int i=s.size(),j=t.size();
  while(dp[i][j]){
    if(s[i-1]==t[j-1])a=s[i-1]+a,i--,j--;
    else if(dp[i-1][j]==dp[i][j])i--;
    else if(dp[i][j-1]==dp[i][j])j--;
  }
  cout<<a<<endl;
}