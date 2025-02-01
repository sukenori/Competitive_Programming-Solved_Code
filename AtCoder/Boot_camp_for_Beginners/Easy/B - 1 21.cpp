#include<bits/stdc++.h>
using namespace std;
int main(){
  string a,b; cin>>a>>b;
  int n=stoi(a+b);
  cout<<(sqrt(n)==floor(sqrt(n))?"Yes":"No")<<endl;
}