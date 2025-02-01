#include<bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=1;i<=n;i++)
int m,n,f[92][92],a=0;
void s(int i,int j,int p){
  if(f[i][j]){
    f[i][j]=0;
    a=max(a,p);
    s(i,j-1,p+1);s(i+1,j,p+1);s(i,j+1,p+1);s(i-1,j,p+1);
    f[i][j]=1;
  }
}
int main(){
  cin>>m>>n;
  rep(i,m)rep(j,n)cin>>f[i][j];
  rep(i,m)rep(j,n)s(i,j,1);
  cout<<a<<endl;
}