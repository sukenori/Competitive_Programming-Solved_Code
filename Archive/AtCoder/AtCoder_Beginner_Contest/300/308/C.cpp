#include<bits/stdc++.h>
using namespace std;
int N;
set<pair<long double,int>>s;
int main(){
  cin>>N;
  long double A,B; for(int i=1;i<=N;i++){
    cin>>A>>B;
    s.insert({-A/(A+B),i});
  }
  for(auto si:s)cout<<si.second<<' ';
}