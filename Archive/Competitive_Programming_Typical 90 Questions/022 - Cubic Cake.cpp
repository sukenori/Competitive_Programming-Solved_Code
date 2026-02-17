#include<bits/stdc++.h>
using namespace std;
int64_t A,B,C;
int main(){
  cin>>A>>B>>C;
  int64_t a=gcd(gcd(A,B),C);
  cout<<(A/a-1)+(B/a-1)+(C/a-1)<<endl;
}