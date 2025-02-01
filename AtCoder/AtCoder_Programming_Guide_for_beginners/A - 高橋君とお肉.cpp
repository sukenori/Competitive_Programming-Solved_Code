#include<bits/stdc++.h>
using namespace std;
int n,a=4*50;
vector<int> t(4);
void f(int i,int t1,int t2){
  if(i==n)a=min(a,max(t1,t2));
  else{
    f(i+1,t1+t[i],t2);
    f(i+1,t1,t2+t[i]);
  }
}
int main(){
  cin>>n;
  for(int i=0;i<n;i++)cin>>t[i];
  f(0,0,0);
  cout<<a<<endl;
}