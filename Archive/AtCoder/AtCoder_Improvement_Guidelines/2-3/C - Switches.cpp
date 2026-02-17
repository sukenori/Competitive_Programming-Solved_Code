#include<iostream>
#include<vector>
using namespace std;
int main(){
  int n,m,k,i,j,sj,o,a,c; cin>>n>>m;
  vector<vector<int>> s(m);
  for(i=0; i<m; i++){
    cin>>k;
    for(j=0; j<k; j++){
      cin>>sj;
      s[i].push_back(sj);
    }
  }
  vector<int> p(m);
  for(i=0; i<m; i++) cin>>p[i];
  for(i=c=0; i<1<<n; i++){
    for(j=a=0; j<m; j++){
      o=0;
      for(auto sj:s[j]) o+=(i>>(sj-1))&1;
      a+=o%2==p[j];
    }
    c+=a==m;
  }
  cout<<c<<endl;
}