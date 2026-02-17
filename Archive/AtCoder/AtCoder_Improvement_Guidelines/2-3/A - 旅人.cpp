#include<bits/stdc++.h>
using namespace std;
int n,m,M=100000;
int s[100001];
int main(){
  cin>>n>>m;
  for(int i=2;i<=n;i++)cin>>s[i],s[i]+=s[i-1];
  int p=1,a,l=0; for(int i=0;i<m;i++){cin>>a;
    l=(l+abs(s[p+a]-s[p]))%M,p+=a;
  }
  cout<<l<<endl;
}