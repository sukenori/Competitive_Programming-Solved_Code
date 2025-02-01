#include<bits/stdc++.h>
using namespace std;
int main(){
  int H,W,N; cin>>H>>W>>N;
  string m[H+1];
  map<char,pair<int,int>> p;
  for(int i=1;i<=H;i++){
    cin>>m[i]; m[i]=' '+m[i];
    for(int j=1;j<=W;j++){
      if(m[i][j]=='S')p['0']={i,j};
      else if(m[i][j]!='.'&&m[i][j]!='X')p[m[i][j]]={i,j};
    }
  }
  int l=0;
  for(int i='0'; i<N+'0'; i++){
    int c[H+1][W+1]={};
    queue<pair<int,int>> q={}; q.push(p[i]);
    while(q.size()){
      bool f=0;
      auto j=q.front(); q.pop(); int y=j.first,x=j.second;
      for(auto d:vector<pair<int,int>>{{0,-1},{1,0},{0,1},{-1,0}}){
        int ny=y+d.first,nx=x+d.second;
        if(1<=ny&&ny<=H&&1<=nx&&nx<=W&&!c[ny][nx]&&m[ny][nx]!='X'){
          c[ny][nx]=c[y][x]+1; q.push({ny,nx});
        }
        if(pair<int,int>{ny,nx}==p[i+1]){l+=c[ny][nx]; f=1; break;}
      }
      if(f)break;
    }
  }
  cout<<l<<endl;
}