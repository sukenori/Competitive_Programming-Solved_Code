#include <bits/stdc++.h>
using namespace std;

int main(){
  int n,k,x,a=0;
  cin >>n >>k;
  for (int i=0; i<n; i++){
    cin >>x;
    if (x<k-x) a+=x*2;
    else a+=(k-x)*2;
  }
  cout <<a <<endl;
}