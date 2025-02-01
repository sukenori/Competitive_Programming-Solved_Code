#include<bits/stdc++.h>
using namespace std;
int N;
double dp[3000][3000];
int main(){
  cin>>N;
  dp[0][0]=1; double p;
  for(int i=1;i<=N;i++){cin>>p;
  for(int j=0;j<=N;j++)
    dp[i][j]=(j>0)*dp[i-1][j-1]*p+dp[i-1][j]*(1-p);
  }
  double a=0; for(int i=N/2+1;i<=N;i++)a+=dp[N][i];
  cout<<fixed<<setprecision(9)<<a<<endl;
}