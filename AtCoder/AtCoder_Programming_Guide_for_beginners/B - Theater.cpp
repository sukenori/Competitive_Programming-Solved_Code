#include <bits/stdc++.h>
using namespace std;

int main(){
  int n,l,r,a=0;
  cin >>n;
  for (int i=0; i<n; i++){
    cin >>l >>r;
    a+=r-l+1;
  }
  cout <<a <<endl;
}