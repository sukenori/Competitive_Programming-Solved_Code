#include<bits/stdc++.h>
using namespace std;
int H,W,N,h,w;
struct range{int min,max;}ry[301],rx[301];
set<int> v;
int ans[300][300];
int main(){
  cin>>H>>W>>N>>h>>w;
  for(int i=1;i<=H;i++)for(int j=1;j<=W;j++){
    int A; cin>>A; v.insert(A);
    ry[A].max=max(ry[A].max,i);
    ry[A].min=ry[A].min==0?i:min(ry[A].min,i);
    rx[A].max=max(rx[A].max,j);
    rx[A].min=rx[A].min==0?j:min(rx[A].min,j);
  }
  fill(ans[0],ans[300],v.size());
  for(int vi:v){
    for(int k=ry[vi].max-h;k<=ry[vi].min-1;k++)
    for(int l=rx[vi].max-w;l<=rx[vi].min-1;l++)
    if(0<=k&&k<=H-h&&0<=l&&l<=W-w)ans[k][l]--;
  }
  for(int i=0;i<=H-h;i++)for(int j=0;j<=W-w;j++)
    cout<<ans[i][j]<<(j!=W-w?" ":"\n");
}