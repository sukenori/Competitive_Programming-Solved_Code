#include<bits/stdc++.h>
using namespace std;
int main(){
  int M; cin>>M;
  int64_t d,sd=0,c,sc=0;
  for(int i=0;i<M;i++){
    cin>>d>>c; sd+=d*c; sc+=c;
  }
  cout<<sc-1+sd/9-(sd%9==0)<<endl;
}