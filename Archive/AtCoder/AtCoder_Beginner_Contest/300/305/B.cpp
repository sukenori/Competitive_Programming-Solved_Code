#include<bits/stdc++.h>
using namespace std;
int main(){
  char p,q; cin>>p>>q;
  int l[7];
  l[0]=0;
  l[1]=3;
  l[2]=4;
  l[3]=8;
  l[4]=9;
  l[5]=14;
  l[6]=23;
  cout<<abs(l[p-'A']-l[q-'A'])<<endl;
}