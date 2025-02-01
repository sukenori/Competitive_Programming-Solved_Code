#include <bits/stdc++.h>
using namespace std;

int main(){
  int n,m,a=0;
  cin >>n;
  vector<string> s(n);
  for (int i=0; i<n; i++) cin >>s.at(i);
  cin >>m;
  vector<string> t(m);
  for (int i=0; i<m; i++) cin >>t.at(i);
  for (int i=0; i<n; i++){
    int c=0;
    for (int j=0; j<n; j++) c+=(s.at(j)==s.at(i));
    for (int j=0; j<m; j++) c-=(t.at(j)==s.at(i));
    if (c>a) a=c;
  }
  cout <<a <<endl;
}