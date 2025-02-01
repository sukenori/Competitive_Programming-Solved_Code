#include <bits/stdc++.h>
using namespace std;

int main(){
  vector<int64_t> l(87);
  l.at(0)=2; l.at(1)=1;
  for (int i=2; i<87; i++) l.at(i)=l.at(i-1)+l.at(i-2);
  int n; cin >>n;
  cout <<l.at(n) <<endl;
}