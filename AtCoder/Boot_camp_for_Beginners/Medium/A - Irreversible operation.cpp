#include<bits/stdc++.h>
using namespace std;
int main(){
  string S; cin>>S;
  int64_t b=0,a=0;
  for(char Si:S)Si=='B'?b++:a+=b;
  cout<<a<<endl;
}