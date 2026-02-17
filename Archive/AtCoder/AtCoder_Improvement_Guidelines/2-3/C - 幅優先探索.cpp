#include<bits/stdc++.h>
using namespace std;
int main(){
  int R,C,sy,sx,gy,gx; cin>>R>>C>>sy>>sx>>gy>>gx;
  int c[51][51]={}; char cij;
  for(int i=1;i<=R;i++)for(int j=1;j<=C;j++){
    cin>>cij; if(cij=='#')c[i][j]=-1;
  }
  queue<pair<int,int>> q; q.push({sy,sx}); c[sy][sx]=1;
  while(q.size()){
    auto i=q.front(); q.pop(); int y=i.first,x=i.second;
    for(auto d:vector<pair<int,int>> {{-1,0},{0,1},{1,0},{0,-1}}){
      int ny=y+d.first,nx=x+d.second;
      if(c[ny][nx]==0){c[ny][nx]=c[y][x]+1; q.push({ny,nx});}
    }
  }
  cout<<c[gy][gx]-1<<endl;
}