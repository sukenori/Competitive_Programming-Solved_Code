#include<iostream>
#include<vector>
#include<set>
using namespace std;
int main(){
  int m,n,i,dx,dy,j;
  cin>>m;
  vector<int> cx(m),cy(m);
  for(i=0; i<m; i++) cin>>cx[i]>>cy[i];
  cin>>n;
  vector<int> sx(n),sy(n);
  set<pair<int,int>> s;
  for(i=0; i<n; i++){
    cin>>sx[i]>>sy[i];
    s.emplace(sx[i],sy[i]);
  }
  for(i=0; i<n; i++){
    dx=sx[i]-cx[0]; dy=sy[i]-cy[0];
    for(j=1; j<m; j++){
      if(!s.count({cx[j]+dx,cy[j]+dy})) break;
      if(j==m-1) cout<<dx<<" "<<dy<<endl;
    }
  }
}