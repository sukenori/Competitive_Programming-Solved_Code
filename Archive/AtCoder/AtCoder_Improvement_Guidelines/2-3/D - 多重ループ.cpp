#include<bits/stdc++.h>
using namespace std;
int n,k,M=1e9+7;
int main(){
  cin>>n>>k;
  int64_t a=1,d=1;
  for(int i=1;i<=n-1+k;i++)a=a*i%M;
  for(int i=1;i<=n-1;i++)d=d*i%M;
  for(int i=1;i<=k;i++)d=d*i%M;
  for(int i=M-2;i>0;i>>=1){
    if(i&1)a=a*d%M;
    d=d*d%M;
  }
  cout<<a<<endl;
}