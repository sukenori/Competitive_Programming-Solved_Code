#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N;
  vector<int> X(N); for(int &Xi:X)cin>>Xi;
  int m=1e6;
  for(int i=1;i<=100;i++){
    int s=0; for(int Xi:X)s+=(Xi-i)*(Xi-i);
    m=min(m,s);
  }
  cout<<m<<endl;
}