#include <bits/stdc++.h>
using namespace std;

int main(){
  int n; string s; bool f=0;
  cin >>n;
  for (int i=0; i<n; i++){
    cin >>s;
    if (s=="Y") f=1;
  }
  if (f) cout <<"Four" <<endl;
  else cout <<"Three" <<endl;
}