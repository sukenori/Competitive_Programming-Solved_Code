#include<bits/stdc++.h>
using namespace std;
int main(){
  int64_t H,W; cin>>H>>W;
  int64_t a;
  if(H==1||W==1)a=1;
  else a=(H*W+1)/2;
  cout<<a<<endl;
}