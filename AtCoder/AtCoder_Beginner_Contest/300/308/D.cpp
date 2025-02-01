#include<bits/stdc++.h>
using namespace std;
int H,W;
string S[500];
bool d[500][500];
void dfs(int y,int x,int l){
  d[y][x]=1;
  int dy[]={-1,0,1,0},dx[]={0,1,0,-1};
  for(int i=0;i<4;i++){
    int ny=y+dy[i],nx=x+dx[i];
    if(0<=ny&&ny<H&&0<=nx&&nx<W&&(!d[ny][nx])
    &&S[ny][nx]=="snuke"[(l+1)%5])
    dfs(ny,nx,l+1);
  }
}
int main(){
  cin>>H>>W;
  for(int i=0;i<H;i++)cin>>S[i];
  dfs(0,0,0);
  cout<<(d[H-1][W-1]?"Yes":"No")<<endl;
}