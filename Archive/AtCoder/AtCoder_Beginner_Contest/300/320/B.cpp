#include<bits/stdc++.h>
using namespace std;
string S;
int main(){
  cin>>S;
  int n=S.size(),a=0;
  for(int s=0;s<n;s++)for(int g=s;g<n;g++){
    int f=1; for(int i=s;i<=(s+g)/2;i++)if(S[i]!=S[g-(i-s)])f=0;
    if(f)a=max(a,g-s+1);
  }
  cout<<a<<endl;
}