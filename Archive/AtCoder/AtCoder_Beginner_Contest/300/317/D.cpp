#include<bits/stdc++.h>
using namespace std;
int N;
int64_t X[100],Y[100],Z[100];
#define INF 1e11
int main(){
  cin>>N; int64_t sZ=0;
  for(int i=0;i<N;i++){cin>>X[i]>>Y[i]>>Z[i]; sZ+=Z[i];}
  int64_t dp[sZ+1];
  fill(dp,dp+sZ+1,INF); dp[0]=0;
  for(int i=0;i<N;i++)for(int j=sZ;j>=Z[i];j--)
    dp[j]=min(dp[j],dp[j-Z[i]]+max((int64_t)0,(X[i]+Y[i])/2+1-X[i]));
     cout<<*min_element(dp+sZ/2+1,dp+sZ)<<endl;
}