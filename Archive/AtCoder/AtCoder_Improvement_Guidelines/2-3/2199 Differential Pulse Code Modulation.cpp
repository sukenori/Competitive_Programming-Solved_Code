#include<bits/stdc++.h>
using namespace std;
int main(){
  while(1){
    int N,M; cin>>N>>M; if(N==0&&M==0) break;
    int C[M]; for(int &Ci:C)cin>>Ci;
    int x[N]; for(int &xi:x)cin>>xi;
    int d[N+1][256]{},inf=255*255*20000;
    fill(*&d[0],*&d[N+1],inf); d[0][128]=0;
    for(int i=1;i<=N;i++)for(int y=0;y<=255;y++)for(int Ck:C){
      int ny=y+Ck; ny=max(0,ny); ny=min(255,ny);
      d[i][ny]=min(d[i][ny],d[i-1][y]+(int)pow(x[i-1]-ny,2));
    }
    int m=inf; for(int di:d[N])m=min(m,di);
    cout<<m<<endl;
  }
}