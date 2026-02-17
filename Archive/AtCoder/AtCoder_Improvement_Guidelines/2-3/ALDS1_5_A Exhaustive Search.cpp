#include<iostream>
#include<vector>
#include<set>
using namespace std;
int main(){
  int n,q,i,j,si,m; cin>>n;
  vector<int> a(n);
  for(i=0; i<n; i++) cin>>a[i];
  set<int> s;
  for(i=0; i<(1<<n); i++){
    si=0;
    for(j=0; j<n; j++) if((i>>j)&1) si+=a[j];
    s.insert(si);
  }
  cin>>q;
  for(i=0; i<q; i++){
    cin>>m;
    s.count(m)? cout<<"yes"<<endl: cout<<"no"<<endl;
  }
}