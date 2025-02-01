#include<bits/stdc++.h>
using namespace std;
int N,M,c[20]{},m[20][100001]{},dp[1<<20];
int main(){
  cin>>N>>M;
  int s; for(int i=0;i<N;i++){cin>>s; s--; c[s]++;
  for(int j=0;j<M;j++){m[j][i+1]=m[j][i];} m[s][i+1]++;}
  fill(*&dp,*&dp+(1<<20),N); dp[0]=0;
  for(int i=0;i<1<<M;i++){
    int l=0; for(int k=0;k<M;k++)if(i>>k&1)l+=c[k];
    for(int j=0;j<M;j++)if(!(i>>j&1))
      dp[i|1<<j]=min(dp[i|1<<j],dp[i]+c[j]-(m[j][l+c[j]]-m[j][l]));
  }
  cout<<dp[(1<<M)-1]<<endl;
}