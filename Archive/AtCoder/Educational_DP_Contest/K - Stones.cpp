#include<bits/stdc++.h>
using namespace std;
int N,K,a[101];
bool dp[100001];
int main(){
  cin>>N>>K;
  for(int i=1;i<=N;i++)cin>>a[i];
  for(int i=1;i<=K;i++){
    for(int j=1;j<=N;j++)
      if(i-a[j]>=0&&dp[i-a[j]]==0)dp[i]=1;
  }
  cout<<(dp[K]?"First":"Second")<<endl;
}