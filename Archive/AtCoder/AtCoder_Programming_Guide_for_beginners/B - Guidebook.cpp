#include <bits/stdc++.h>
using namespace std;

int main(){
  int n,p;
  cin >>n;
  string s;
  vector<tuple<string,int,int>> sp(n);
  for (int i=0; i<n; i++){
    cin >>s >>p;
    sp.at(i)=make_tuple(s,100-p,i+1);
  }
  sort(sp.begin(),sp.end());
  for (int i=0; i<n; i++){
    cout <<get<2>(sp.at(i)) <<endl;
  }
}