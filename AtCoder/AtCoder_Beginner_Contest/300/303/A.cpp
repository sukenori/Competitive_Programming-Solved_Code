#include<bits/stdc++.h>
using namespace std;
int main(){
  int n; string s,t;
  cin>>n>>s>>t;
int f=0;  for(int i=0;i<n;i++){
if(!(s[i]==t[i]
||((s[i]=='l'&&s[i]=='1')||(s[i]=='1'||s[i]=='l'))
||((s[i]=='o'&&s[i]=='0')||(s[i]=='0'||s[i]=='o'))
))f=1;
  }
  if(f==0)cout<<"Yes"<<endl;
  else cout<<"No"<<endl;
}