#include<bits/stdc++.h>
using namespace std;
int main(){
int n; cin>>n;
string s; cin>>s;
int c1=0,c2=1;
for(char si:s){
  if(si=='o') c1=1;
  if(si=='x') c2=0;
}
if(c1==1&&c2==1)cout<<"Yes"<<endl;
else cout<<"No"<<endl;

}