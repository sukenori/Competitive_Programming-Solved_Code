#include<bits/stdc++.h>
using namespace std;
int N,M;
int C[100],P[100],S[100][100];
double dp[101];
int main(){
  cin>>N>>M;
  for(int i=0;i<N;i++){
    cin>>C[i]>>P[i];
    for(int j=0;j<P[i];j++)cin>>S[i][j];
  }
  for(int i=M-1;i>=0;i--){dp[i]=1000001;
    for(int j=0;j<N;j++){double s=0,nz=0;
      for(int k=0;k<P[j];k++)if(S[j][k]){
        s+=dp[min(M,i+S[j][k])]; nz++;
      }
      dp[i]=min(dp[i],s/nz+C[j]*P[j]/nz);
    }
  }
  cout<<fixed<<setprecision(6)<<dp[0]<<endl;
}