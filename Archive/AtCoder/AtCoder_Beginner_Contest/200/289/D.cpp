#include<bits/stdc++.h>
using namespace std;
int N,M,X;
int A[10];
int dp[100001];
int main(){
  cin>>N;
  for(int i=0;i<N;i++)cin>>A[i];
  cin>>M;
  int B; for(int i=0;i<M;i++)cin>>B,dp[B]=-1;
  cin>>X; dp[0]=1;
  for(int i=0;i<=X;i++)if(dp[i]==1)for(int Ai:A)
    if(i+Ai<=X&&dp[i+Ai]!=-1)dp[i+Ai]=1;
  cout<<(dp[X]?"Yes":"No")<<endl;
}