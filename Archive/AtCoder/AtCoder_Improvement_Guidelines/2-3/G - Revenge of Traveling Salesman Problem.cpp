#include<bits/stdc++.h>
using namespace std;
int N,M;
int64_t d[16][16],ti[16][16],dst[1<<16][16],cnt[1<<16][16];
#define INF 2e13
int main(){
  cin>>N>>M;
  fill(d[0],d[16],INF);
  int s,t; int64_t di,tii; for(int i=0;i<M;i++){
    cin>>s>>t>>di>>tii; s--; t--;
    d[s][t]=d[t][s]=di; ti[s][t]=ti[t][s]=tii;
  }
  fill(dst[0],dst[1<<16],INF); dst[0][0]=0; cnt[0][0]=1;
  for(int i=0;i<1<<N;i++)for(int j=0;j<N;j++)for(int k=0;k<N;k++){
      int ni=i|1<<k; int64_t dk=dst[i][j]+d[j][k];
    if(!(i>>k&1)&&dk<=ti[j][k]){
      if(dk==dst[ni][k])cnt[ni][k]+=cnt[i][j];
      if(dk<dst[ni][k]){dst[ni][k]=dk; cnt[ni][k]=cnt[i][j];}
    }
  }
  int64_t a=dst[(1<<N)-1][0]; if(a<INF)cout<<a<<' '<<cnt[(1<<N)-1][0]<<endl;
  else cout<<"IMPOSSIBLE"<<endl;
}