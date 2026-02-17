#include<bits/stdc++.h>
using namespace std;
int64_t N,K;
vector<pair<int64_t,int64_t>>m;
int main(){
  cin>>N>>K;
  int64_t a,b,s=0; for(int i=0;i<N;i++){
    cin>>a>>b; m.push_back({a,b}); s+=b;
  }
  sort(m.begin(),m.end());
  int64_t d=1; for(auto mi:m){
    if(s<=K){cout<<d<<endl; return(0);}
    s-=mi.second; d=mi.first+1;
  }
  cout<<d<<endl;
}