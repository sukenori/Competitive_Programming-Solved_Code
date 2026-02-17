#include<bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=1;i<=n;i++)
int N,M;
int a[51],b[51],p[51];
int r(int i){return p[i]==i?i:i=r(p[i]);}
int main(){
  cin>>N>>M;
  rep(i,M)cin>>a[i]>>b[i];
  int s=0; rep(i,M){
    rep(j,N)p[j]=j;
    rep(j,M)if(j!=i){
      int ra=r(a[j]),rb=r(b[j]);
      if(ra!=rb)p[rb]=ra;
    }
    int c=0; rep(j,N)c+=r(j)==j;
    if(c>1)s++;
    }
  cout<<s<<endl;
}