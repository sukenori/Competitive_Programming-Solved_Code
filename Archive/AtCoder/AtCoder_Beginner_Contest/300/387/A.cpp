#include<bits/stdc++.h>
using namespace std;

int slove(int A,int B){
  //
  return pow(A+B,2);
}

int main(){
  //input
  int A,B;
  cin>>A>>B;

  //slove
  auto ans=slove(A,B);

  //output
  cout<<ans<<endl;
}