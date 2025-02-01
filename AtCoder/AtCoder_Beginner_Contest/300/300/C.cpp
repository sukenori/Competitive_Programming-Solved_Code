#include<bits/stdc++.h>
using namespace std;
int main(){
int h,w; cin>>h>>w;
string c[h];
int n=min(h,w);
int s[n+1]{};
for(int i=0;i<h;i++)cin>>c[i];
for (int p=0;p<h-1+w-1;p++){
int cnt=0;
for(int i=0; i<max(h,w);i++){
  int j=p-i; 
if(0<=i&&i<h&&0<=j&&j<w&&c[i][j]=='.'){
  if(cnt>1)s[cnt/2]+=1; cnt=0;}
if(0<=i&&i<h&&0<=j&&j<w&&c[i][j]=='#')cnt++;}
if(cnt>1)s[cnt/2]+=1;}
for(int i=1;i<n;i++)cout<<s[i]<<" ";
cout<<s[n]<<endl;
}