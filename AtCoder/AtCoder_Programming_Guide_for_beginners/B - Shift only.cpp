#include <bits/stdc++.h>
using namespace std;

int main(){
  int n,a,s=30,j;
  cin >>n;
  for (int i=0; i<n; i++){
    cin >>a;
    j=0;
    while (a%2==0){
      a/=2;
      j+=1;
    }
    if (j<s) s=j;
  }
  cout <<s <<endl;
}