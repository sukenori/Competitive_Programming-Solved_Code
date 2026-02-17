#include<bits/stdc++.h>
using namespace std;
int H,W,Si,Sj,Gi,Gj;
string A[2002];
int di[]={-1,0,1,0},dj[]={0,1,0,-1};
int main(){
  cin>>H>>W;
  A[0]=A[H+1]=string(W+2,'#');
  string Ai; for(int i=1;i<=H;i++){
    cin>>Ai; A[i]='#'+Ai+'#';
  }
  for(int i=1;i<=H;i++)for(int j=1;j<=W;j++){
    int k=((string)"^>v<").find(A[i][j]);
    if(k!=string::npos){
      int id=i,jd=j; while(1){
        id+=di[k]; jd+=dj[k];
        if(((string)"#>v<^").find(A[id][jd])==string::npos){
          if(A[id][jd]=='.')A[id][jd]='!';
          }
        else break;
      }
    }
    if(A[i][j]=='S')Si=i,Sj=j;
    if(A[i][j]=='G')Gi=i,Gj=j;
  }
  int d[H+2][W+2]; fill(d[0],d[H+1],-1); d[Si][Sj]=0;
  queue<pair<int,int>>q; q.push({Si,Sj}); while(q.size()){
    int i,j; tie(i,j)=q.front(); q.pop();
    for(int k=0;k<4;k++){int ni=i+di[k],nj=j+dj[k];
      if(((string)"#!>v<^").find(A[ni][nj])==string::npos&&d[ni][nj]==-1){
        d[ni][nj]=d[i][j]+1; q.push({ni,nj});
      }
    }
  }
  cout<<d[Gi][Gj]<<endl;
}