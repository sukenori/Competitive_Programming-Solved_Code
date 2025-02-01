#include<bits/stdc++.h>
using namespace std;
int main(){
  int i;
  int n,a,b; cin>>n>>a>>b;
  int c[n]; for(int &ic:c)cin>>ic;

  for(i=1;i<=n;i++)if(c[i-1]==a+b)break;
    cout<<i<<endl;}