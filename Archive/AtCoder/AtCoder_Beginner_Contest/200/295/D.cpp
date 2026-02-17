#include<bits/stdc++.h>
using namespace std;
string S;
int64_t c[1<<10];
int main(){
  cin>>S;
  int s=0; c[0]++; for(char Si:S){
    s^=1<<Si-'0'; c[s]++;
  }
  int64_t a=0;
  for(int i=0;i<1<<10;i++)a+=c[i]*(c[i]-1)/2;
  cout<<a<<endl;
}