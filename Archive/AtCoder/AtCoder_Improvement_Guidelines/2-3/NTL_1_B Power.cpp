#include<bits/stdc++.h>
using namespace std;
int main(){
  int64_t m,n; cin>>m>>n;
  int a=1,M=1000000007;
  for(int i=0; i<log2(1e9)+1;i++){
    if(n>>i&1)a=a*m%M;
    m=m*m%M;
  }
  cout<<a<<endl;
}