#include<bits/stdc++.h>
using namespace std;
typedef pair<int,int> P;
#define rep(i,n) for(int i=0;i<n;i++)
int H,W;
string S[100];
P a[5];
int main(){
  cin>>H>>W;
  rep(i,H)cin>>S[i];
  rep(i,H)rep(j,W)if(S[i][j]=='s'){a[0]={i,j};
    for(auto d:vector<P>{{1,0},{1,1},{0,1},{-1,1},{-1,0},{-1,-1},{0,-1},{1,-1}}){
      int dy,dx; tie(dy,dx)=d; int ny=i+dy,nx=j+dx;
      int k;
      for(k=1;k<5;k++){
        if(0<=ny&&ny<H&&0<=nx&&nx<W&&S[ny][nx]=="snuke"[k]){
          a[k]={ny,nx}; ny+=dy; nx+=dx;
        }
        else break;
      }
      if(k==5)rep(k,5)cout<<a[k].first+1<<' '<<a[k].second+1<<endl;
    }
  }
}