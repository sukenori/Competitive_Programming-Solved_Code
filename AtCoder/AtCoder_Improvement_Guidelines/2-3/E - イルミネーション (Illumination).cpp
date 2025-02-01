#include<bits/stdc++.h>
using namespace std;
typedef pair<int,int> co;
int main(){
  int W,H; cin>>W>>H;
  int m[H+2][W+2]={};
  for(int i=1;i<=H;i++)for(int j=1;j<=W;j++)cin>>m[i][j];
  queue<co> q; q.push({0,0});
  int l=0;
  vector<co> d0={{-1,-1},{-1,0},{0,1},{1,0},{1,-1},{0,-1}},
    d1={{-1,0},{-1,1},{0,1},{1,1},{1,0},{0,-1}};
  while(q.size()){
    auto i=q.front(); q.pop(); int y=i.first,x=i.second;
    vector<co> d=y%2?d1:d0;
    for(co di:d){
      int ny=y+di.first,nx=x+di.second;
      if(0<=ny&&ny<=H+1&&0<=nx&&nx<=W+1&&!m[ny][nx]){
        vector<co> r=ny%2?d1:d0;
        for(co ri:r){
          int ry=ny+ri.first,rx=nx+ri.second;
          if(0<=ry&&ry<=H+1&&0<=rx&&rx<=W+1&&m[ry][rx]>0)l++;
        }
        m[ny][nx]=-1; q.push({ny,nx});
      }
    }
  }
  cout<<l<<endl;
}