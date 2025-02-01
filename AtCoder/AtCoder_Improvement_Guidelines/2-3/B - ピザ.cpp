#include<bits/stdc++.h>
using namespace std;
int main(){
  int d,n,m; cin>>d>>n>>m;
  vector<int> di(n-1);
  for(int i=0; i<n-1; i++) cin>>di[i];
  di.push_back(0); di.push_back(d);
  sort(di.begin(),di.end());
  vector<int> k(m);
  for(int i=0; i<m; i++) cin>>k[i];
  int s=0;
  for(int ki:k){
    s+=min(ki-*(upper_bound(di.begin(),di.end(),ki)-1),
      *lower_bound(di.begin(),di.end(),ki)-ki);
  }
  cout<<s<<endl;
}