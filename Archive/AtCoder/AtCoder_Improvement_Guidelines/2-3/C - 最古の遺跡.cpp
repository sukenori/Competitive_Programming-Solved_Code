#include<iostream>
#include<vector>
#include<set>
using namespace std;
int main(){
  int n,i,j,dx,dy,s=0; cin>>n;
  vector<int> x(n),y(n);
  set<pair<int,int>> p;
  for(i=0; i<n; i++){
    cin>>x[i]>>y[i];
    p.emplace(x[i],y[i]);
  }
  for(i=0; i<n-1; i++){
    for(j=i+1; j<n; j++){
      dx=x[j]-x[i]; dy=y[j]-y[i];
      if(p.count({x[i]+dy,y[i]-dx})&&p.count({x[j]+dy,y[j]-dx}))
        s=max(s,dx*dx+dy*dy);
    }
  }
  cout<<s<<endl;
}