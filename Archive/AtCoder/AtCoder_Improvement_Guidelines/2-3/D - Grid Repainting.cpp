#include<bits/stdc++.h>
using namespace std;
int main(){
  int H,W; cin>>H>>W;
  string s[H]; int b=0;
  for(int i=0;i<H;i++){
    cin>>s[i]; b+=count(s[i].begin(),s[i].end(),'#');
  }  
  int p[H][W]={}; p[0][0]=1;
  queue<pair<int,int>>q; q.push({0,0});
  while(q.size()){
    auto i=q.front(); q.pop();
    int y=i.first,x=i.second;
    for(auto d:vector<pair<int,int>>{{1,0},{0,1},{-1,0},{0,-1}}){
      int ny=y+d.first,nx=x+d.second;
      if(0<=ny&&ny<H&&0<=nx&&nx<W&&s[ny][nx]=='.'&&!p[ny][nx]){
        p[ny][nx]=p[y][x]+1; q.push({ny,nx});
      }
    }
  }
  cout<<(p[H-1][W-1]?H*W-p[H-1][W-1]-b:-1)<<endl;
}