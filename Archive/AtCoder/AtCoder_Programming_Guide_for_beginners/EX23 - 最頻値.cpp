#include <bits/stdc++.h>
using namespace std;

int main(){
  int n,ai,ma,mc=0;
  cin >>n;
  map<int,int> a;
  for (int i=0; i<n; i++){
    cin >>ai;
    if (a.count(ai)) a[ai]+=1;
    else a[ai]=1;
    if (a.at(ai)>mc){
      mc=a.at(ai);
      ma=ai;
    }
  }
  cout <<ma <<" " <<mc <<endl;
}
