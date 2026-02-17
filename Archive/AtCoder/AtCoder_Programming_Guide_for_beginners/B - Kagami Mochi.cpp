#include <bits/stdc++.h>
using namespace std;
/*
int main(){
  int n,c=0;
  cin >>n;
  vector<int> d(n);
  for (int i=0; i<n; i++) cin >>d.at(i);
  while (1) {
    int m=0;
    for (int i=0; i<n; i++) if (d.at(i)>m) m=d.at(i);
    for (int i=0; i<n; i++) if (d.at(i)==m) d.at(i)=0;
    c+=1;
    int s=0;
    for (int i=0; i<n; i++) s+=d.at(i);
    if (s==0) break;
  }
  cout <<c <<endl;
}
*/

int main(){
  int n;
  cin >>n;
  vector<int> d(n);
  for (int i=0; i<n; i++) cin >>d.at(i);
  sort(d.begin(),d.end());
  int m=101,c=0;
  for (int i=n-1; i>=0; i--){
    if (d.at(i)<m){
      m=d.at(i);
      c+=1;
    }
  }
  cout <<c <<endl;
}