#include<bits/stdc++.h>
using namespace std;
int main(){

int n;
vector<int>a(100);
cin>>n;
for(int i=0;i<n;i++)cin>>a[i];
vector<int>b={}; b.push_back(a[0]);
for(int i=1;i<n;i++){
if(abs(a[i]-a[i-1])==1)b.push_back(a[i]);
else{
  int na=a[i-1];
if(a[i]>a[i-1]){
while(1){
na++;
b.push_back(na);
if(na==a[i])break;
}
}
if(a[i]<a[i-1]){
while(1){
na--;
b.push_back(na);
if(na==a[i])break;
}
}
}
}
for(int i=0;i<b.size();i++){cout<<b[i];
if(i==b.size()-1)cout<<endl; else cout<<" ";}



  
}