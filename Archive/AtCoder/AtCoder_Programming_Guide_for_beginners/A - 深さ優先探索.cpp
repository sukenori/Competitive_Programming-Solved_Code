#include <bits/stdc++.h>
using namespace std;

void d(vector<string> &c,int y,int x){
  c.at(y).at(x)='#';
  if (y<c.size()-1) if (c.at(y+1).at(x)=='.') d(c,y+1,x);
  if (x<c.at(0).size()-1) if (c.at(y).at(x+1)=='.') d(c,y,x+1);
  if (y>0) if (c.at(y-1).at(x)=='.') d(c,y-1,x);
  if (x>0) if (c.at(y).at(x-1)=='.') d(c,y,x-1);
  return;
}

int main(){
  int h,w,sy,sx,gy,gx;
  cin >>h >>w;
  vector<string> c(h);
  for (int i=0; i<h; i++) cin >>c.at(i);
  for (int i=0; i<h; i++){
    for (int j=0; j<w; j++){
      if (c.at(i).at(j)=='s'){
        sy=i; sx=j;
        c.at(i).at(j)='.';
      }
      if (c.at(i).at(j)=='g'){
        gy=i; gx=j;
        c.at(i).at(j)='.';
      }
    }
  }
  d(c,sy,sx);
  if (c.at(gy).at(gx)=='#') cout <<"Yes" <<endl;
  else cout <<"No" <<endl;
}