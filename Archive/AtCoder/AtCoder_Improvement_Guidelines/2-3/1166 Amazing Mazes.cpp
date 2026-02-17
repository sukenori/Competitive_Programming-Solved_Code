#include<bits/stdc++.h>
using namespace std;
int main(){
  while(1){
    int w,h; cin>>w>>h; if(w==0&&h==0)break;
    bool f[h*2-1][w]={};
    for(int i=0;i<h*2-1;i++)for(int j=0;j<w-!(i%2);j++)cin>>f[i][j];
    int c[h][w]={}; c[0][0]=1;
    queue<pair<int,int>>q; q.push({0,0});
    while(q.size()){
      int y,x,dy,dx;
      tie(y,x)=q.front(); q.pop();
      for(auto d:vector<pair<int,int>>{{-1,0},{0,1},{1,0},{0,-1}}){
        tie(dy,dx)=d; int ny=y+dy,nx=x+dx;
        if(0<=ny&&ny<h&&0<=nx&&nx<w&&((dy==-1&&!f[y*2-1][x])
          ||(dx==1&&!f[y*2][x])||(dy==1&&!f[y*2+1][x])
          ||(dx==-1&&!f[y*2][x-1]))&&!c[ny][nx]){
          c[ny][nx]=c[y][x]+1; q.push({ny,nx});
        }
      }
    }
    cout<<c[h-1][w-1]<<endl;
  }
}