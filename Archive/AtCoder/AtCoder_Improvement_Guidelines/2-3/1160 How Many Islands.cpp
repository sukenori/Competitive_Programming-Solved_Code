#include<bits/stdc++.h>
using namespace std;
#define rep(i,b,n) for(int i=b; i<n; i++)
int w,h;
vector<vector<int> > c(50,vector<int>(50));
void dfs(int y,int x){
  c[y][x]=0;
  rep(ny,y-1,y+2) rep(nx,x-1,x+2)
    if(0<=ny&&ny<h&&0<=nx&&nx<w&&c[ny][nx]) dfs(ny,nx);
}
int main(){
  while(cin>>w>>h,w,h){
    rep(i,0,h) rep(j,0,w) cin>>c[i][j];
    int a=0;
    rep(i,0,h) rep(j,0,w) if(c[i][j]){a++; dfs(i,j);}
    cout<<a<<endl;
  }
}