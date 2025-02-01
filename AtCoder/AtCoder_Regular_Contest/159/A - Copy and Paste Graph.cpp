#include<iostream>
#include<vector>
using namespace std;
int n,k,i,j,q,s,t,p;
void dfs(auto &a,auto d,int s,int t,int p){
  d[s]=1;
  if(s==t) return;
  for(i=0; i<n; i++) if(a[s][i]&&!d[i]) dfs(a,d,i,t,p+1);
  return;
}
int main(){
  cin>>n>>k;
  vector<vector<int>> a(n,vector<int>(n));
  for(i=0; i<n; i++) for(j=0; j<n; j++) cin>>a[i][j];
  cin>>q;
  for(int ii=0; ii<q; ii++){
    cin>>s>>t; s=s%n-1; t=t%n-1;
    vector<int> d(n); p=0;
    dfs(a,d,s,t,p);
    s==t? cout<<p<<endl: cout<<-1<<endl;
  }
}