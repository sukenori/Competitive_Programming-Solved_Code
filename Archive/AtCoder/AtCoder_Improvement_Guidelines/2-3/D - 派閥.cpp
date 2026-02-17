#include<iostream>
#include<vector>
#include<algorithm>
using namespace std;
int main(){
  int n,m; cin>>n>>m;
  vector<pair<int,int>> xy(m);
  for(int i=0; i<m; i++) cin>>xy[i].first>>xy[i].second;
  int a=0;
  for(int i=1; i<1<<n; i++){
    vector<int> f;
    for(int j=0; j<n; j++) if(i>>j&1) f.push_back(j+1);
    int s=f.size();
    int c=0;
    for(int j=0; j<m; j++)
      if(find(f.begin(),f.end(),xy[j].first)!=f.end()
      &&find(f.begin(),f.end(),xy[j].second)!=f.end()) c++;
    if(s*(s-1)/2==c) a=max(a,s);
  }
  cout<<a<<endl;
}