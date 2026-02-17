#include<bits/stdc++.h>
using namespace std;
int main(){
  int m,n; cin>>n>>m;
  set<pair<int,int>>s;
  int a[m][n];
  for(int i=0;i<m;i++)for(int j=0;j<n;j++)
  cin>>a[i][j];
  for(int i=0;i<m;i++)for(int j=0;j<n-1;j++)
  {s.insert({a[i][j],a[i][j+1]});s.insert({a[i][j+1],a[i][j]});}
  cout<<((n*(n-1)-s.size())/2)<<endl;
}