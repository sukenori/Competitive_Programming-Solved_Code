#include<bits/stdc++.h>
using namespace std;
int main(){
  uint64_t a=1;
  uint64_t s=0;
  for(int i=0;i<64;i++){
    int A; cin>>A;
    s=s+A*a;
    a=a<<1;
  }
  cout<<s<<endl;
}