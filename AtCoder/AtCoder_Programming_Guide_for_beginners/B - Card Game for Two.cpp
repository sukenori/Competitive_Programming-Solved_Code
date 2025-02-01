#include <bits/stdc++.h>
using namespace std;
/*
int main(){
  int n,f=1,p=0;
  cin >>n;
  vector<int> a(n);
  for (int i=0; i<n; i++) cin >>a.at(i);
  for (int i=0; i<n; i++){
    int cn,cv=0;
    for (int j=0; j<n; j++){
     if (a.at(j)>cv){
      cn=j;
      cv=a.at(j);
     }
    }
    p+=cv*f;
    f*=-1;
    a.at(cn)=0;
  }
  cout <<p <<endl;
}
*/

int main(){
  int n,p=0,f=1;
  cin >>n;
  vector<int> a(n);
  for (int i=0; i<n; i++) cin >>a.at(i);
  sort(a.begin(),a.end());
  for (int i=n-1; i>=0; i--){
    p+=a.at(i)*f;
    f*=-1;
  }
  cout <<p <<endl;
}