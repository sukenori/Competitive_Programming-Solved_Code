#include<bits/stdc++.h>
using namespace std;
int main(){
int n; cin>>n;
string s; cin>>s;

int f=0;
for(char si:s){
if(si=='|'){
  if(f==0)f=1;
  if(f==2)f=3;
}
if(si=='*'&&f==1)f=2;

}

if(f==3)cout<<"in"<<endl;
else cout<<"out"<<endl;

}