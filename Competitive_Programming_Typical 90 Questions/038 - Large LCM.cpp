#include<bits/stdc++.h>
using namespace std;
int64_t A,B;
int main(){
  cin>>A>>B;
  if(A>(int64_t)1e18/(B/gcd(A,B)))cout<<"Large"<<endl;
  else cout<<lcm(A,B)<<endl;
}