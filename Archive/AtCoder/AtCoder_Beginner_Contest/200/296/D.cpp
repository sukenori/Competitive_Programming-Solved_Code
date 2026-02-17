#include<bits/stdc++.h>
using namespace std;
int64_t N,M;
int main(){
  cin>>N>>M;
  set<int64_t>X;
  for(int64_t a=1;a<=min(N,(int64_t)ceil(sqrt(M)));a++){
    int64_t b=(M+a-1)/a; if(b<=N)X.insert(a*b);
  }
  cout<<(X.size()?*X.begin():-1)<<endl;
}