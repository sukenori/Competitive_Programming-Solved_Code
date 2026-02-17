#include<bits/stdc++.h>
using namespace std;
int64_t a,b,c;
int main(){
  cin>>a>>b>>c;
  int64_t p=1; for(int i=1;i<=b;i++)p*=c;
  cout<<(a<p?"Yes":"No")<<endl;
}