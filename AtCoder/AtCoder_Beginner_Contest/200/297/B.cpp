#include<iostream>
#include<string>
using namespace std;
int main(){
string s; cin>>s;
int i,ll=0,pp=8,aa=0;
for(i=0; i<8; i++){
if(s[i]=='B')ll+=i%2;
if(s[i]=='R'&&pp!=8&&aa==0){cout<<"No"<<endl;exit(0);}
if(s[i]=='R'&&pp==8&&aa==0)pp=i;

if(s[i]=='K'){aa=1;if(pp>i){cout<<"No"<<endl;exit(0);}}
}
if(ll==1){cout<<"Yes"<<endl;}
else{cout<<"No"<<endl;}
}