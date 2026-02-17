#include<bits/stdc++.h>
using namespace std;
int N;
double X[10000],Y[10000];
double dp[10000][29];
#define INF 2e8
int main(){
  cin>>N;
  for(int i=0;i<N;i++)cin>>X[i]>>Y[i];
  auto d=[&](int i,int j){
    return sqrt((X[j]-X[i])*(X[j]-X[i])+(Y[j]-Y[i])*(Y[j]-Y[i]));
  };
  fill(dp[0],dp[10000],INF); dp[0][0]=0;
  for(int i=1;i<N;i++)for(int j=0;j<29;j++)for(int k=0;k<=j;k++)
    dp[i][j]=min(dp[i][j],dp[i-1-(j-k)][k]+d(i,i-1-(j-k)));
  double a=INF; for(int i=0;i<29;i++)
    a=min(a,dp[N-1][i]+(i>0?1<<(i-1):0));
  cout<<fixed<<setprecision(20)<<a<<endl;
}