#include<bits/stdc++.h>
using namespace std;
#define rep(i,f,t) for(int i=f;i<=t;i++)
int main(){
  while(1){
    int H; cin>>H; if(!H)break;
    vector<vector<int>>p(5,vector<int>(H));
    rep(i,0,H-1)rep(j,0,4)cin>>p[j][H-1-i];
    int s=0,c=1;
    while(c){c=0;
      for(int i=5;i>=3;i--)rep(j,0,H-1)rep(k,0,5-i){
        bool f=1;
        rep(l,1,i-1)if(p[k][j]==0||p[k][j]!=p[k+l][j])f=0;
        if(f)rep(l,0,i-1){
          s+=p[k+l][j]; p[k+l][j]=0; c=1;
        }
      }
      rep(i,0,4)for(int j=H-1;j>=0;j--)if(!p[i][j]){
        p[i].erase(p[i].begin()+j); p[i].push_back(0);
      }
    }
    cout<<s<<endl;
  }
}