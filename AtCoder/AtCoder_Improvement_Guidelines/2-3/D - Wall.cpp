#include<bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0;i<n;i++)
int H,W;
int c[10][10];
int main(){
  cin>>H>>W;
  rep(i,10)rep(j,10)cin>>c[i][j];
  rep(k,10)rep(i,10)rep(j,10)
    c[i][j]=min(c[i][j],c[i][k]+c[k][j]);
  int s=0;
  rep(i,H)rep(j,W){int A; cin>>A; s+=A>=0?c[A][1]:0;}
  cout<<s<<endl;
}