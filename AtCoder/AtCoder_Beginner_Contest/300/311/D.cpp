#include<bits/stdc++.h>
using namespace std;
int N,M;
string S[200];
int d[200][200],a[200][200];
void dfs(int i,int j){
  a[i][j]=1;
  int di[]={-1,0,1,0},dj[]={0,1,0,-1};
  for(int k=0;k<4;k++){int ni=i,nj=j;
    while(1){d[ni][nj]=1;
      if(S[ni+di[k]][nj+dj[k]]=='#')break;
      ni+=di[k],nj+=dj[k];
    }
    if(!a[ni][nj])dfs(ni,nj);
  }
}
int main(){
  cin>>N>>M;
  for(int i=0;i<N;i++)cin>>S[i];
  dfs(1,1);
  cout<<accumulate(d[0],d[199],0)<<endl;
}