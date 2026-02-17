#include<bits/stdc++.h>
using namespace std;
int main(){
int n,t; cin>>n>>t;
vector<int> c(n);for(int &ci:c)cin>>ci;
vector<int> r(n);for(int &ri:r)cin>>ri;
int t2=c[0];
int mn=-1,mp=-1;
int mn2=r[0],mp2=0;
for(int i=0;i<n;i++){
if(c[i]==t){
  if(r[i]>mn){mn=r[i];mp=i;}}
if(c[i]==t2){
  if(r[i]>mn2){mn2=r[i];mp2=i;}
}


  }
int a;
if(mp!=-1)a=mp+1;
else a=mp2+1;
cout<<a<<endl;
}