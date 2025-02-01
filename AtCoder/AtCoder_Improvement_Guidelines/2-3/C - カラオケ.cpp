#include<iostream>
using namespace std;
int main(){
  int n,m; cin>>n>>m;
  int64_t a[n][m],i,j,k,p,ans=0;
  for(i=0; i<n; i++) for(j=0; j<m; j++) cin>>a[i][j];
  for(i=0; i<m-1; i++) for(j=i+1; j<m; j++){
    p=0;
    for(k=0; k<n; k++) p+=max(a[k][i],a[k][j]);
    ans=max(ans,p);
  }
  cout<<ans<<endl;
}