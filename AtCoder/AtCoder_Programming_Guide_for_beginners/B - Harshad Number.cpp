#include <bits/stdc++.h>
using namespace std;

int main(){
  int n,f=0;
  cin >>n;
  for (int i=100000000; i>0; i/=10) f+=n%(i*10)/i;
  if (n%f==0) cout <<"Yes" <<endl;
  else cout <<"No" <<endl;
}