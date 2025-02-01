#include <bits/stdc++.h>
using namespace std;

int main(){
  int n,a,b;
  cin >>n;
  vector<pair<int,int>> ba(n);
  for (int i=0; i<n; i++){
    cin >>a >>b;
    ba.at(i)=make_pair(b,a);
  }
  sort(ba.begin(),ba.end());
  for (int i=0; i<n; i++){
    tie(b,a)=ba.at(i);
    cout <<a <<" " <<b <<endl;
  }
}