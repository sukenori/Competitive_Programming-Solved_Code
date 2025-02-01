#include<bits/stdc++.h>
using namespace std;
int n;
int c[1000002];
int main(){
  cin>>n;
  int a,b; for(int i=0;i<n;i++){
    cin>>a>>b; c[a]++; c[b+1]--;
  }
  int s=c[0]; for(int i=1;i<=1000000;i++){
    c[i]+=c[i-1]; s=max(s,c[i]);
  }
  cout<<s<<endl;
}