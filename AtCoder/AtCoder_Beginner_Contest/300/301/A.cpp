#include<bits/stdc++.h>
using namespace std;
int main(){
int n; string s;
cin>>n; cin>>s;
int t=0,a=0;
for(char si:s){
  if(si=='T')t++;
  if(si=='A')a++;
}
if(t>a)cout<<'T'<<endl;
if(a>t)cout<<'A'<<endl;
if(t==a){int g=t;
t=a=0;
for(char si:s){
    if(si=='T')t++;
  if(si=='A')a++;
  if(t==g){cout<<'T'<<endl; exit(0);}
    if(a==g){cout<<'A'<<endl; exit(0);}

}


}





}