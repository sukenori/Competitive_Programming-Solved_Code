#include<bits/stdc++.h>
using namespace std;
int N,M;
vector<int>G[300001];
int dp[300001];
int main(){
  cin>>N>>M;
  int p; for(int i=2;i<=N;i++){cin>>p; G[p].push_back(i);}
  fill(dp+1,dp+N+1,-1);
  int x,y; for(int i=0;i<M;i++){cin>>x>>y; dp[x]=max(dp[x],y);}
  for(int i=1;i<=N;i++)
    if(dp[i]>0)for(int j:G[i])dp[j]=max(dp[j],dp[i]-1);
  cout<<N-count(dp+1,dp+N+1,-1)<<endl;
}