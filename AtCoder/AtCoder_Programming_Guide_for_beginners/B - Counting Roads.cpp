#include <bits/stdc++.h>
using namespace std;

int main(){
  int n,m,ab;
  cin >>n >>m;
  vector<int> c(n);
  for (int i=0; i<m*2; i++){
    cin >>ab;
    c.at(ab-1)++;
  }
  for (int i=0; i<n; i++) cout <<c.at(i) <<endl;
}