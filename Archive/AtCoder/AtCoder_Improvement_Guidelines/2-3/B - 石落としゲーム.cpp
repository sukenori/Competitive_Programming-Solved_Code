#include<bits/stdc++.h>
using namespace std;
#define rep(i,f,t) for(int i=f;i<=t;i++)
int main(){
  int H,W,K; cin>>H>>W>>K;
  vector<vector<int>>c(W,vector<int>(H));
  rep(i,0,H-1){string in; cin>>in;
    rep(j,0,W-1)c[j][H-1-i]=in[j]-'0';
  }
  int s=0;
  rep(i,0,W-1)rep(j,0,H-2){
    vector<vector<int>>ci=c; ci[i][j]=0;
    int si=0,k=0,p=1; while(p){p=0;
      rep(l,0,W-1)for(int m=H-1;m>=0;m--)if(!ci[l][m]){
        ci[l].erase(ci[l].begin()+m); ci[l].push_back(0);
      }
      for(int l=W;l>=K;l--)rep(m,0,H-1)rep(n,0,W-l){
        bool f=1; rep(o,1,l-1)
          if(ci[n][m]==0||ci[n][m]!=ci[n+o][m])f=0;
        if(f)rep(o,0,l-1){
          si+=ci[n+o][m]*pow(2,k); ci[n+o][m]=0; p=1;
        }
      }
      k++;
    }
    s=max(s,si);
  }
  cout<<s<<endl;
}