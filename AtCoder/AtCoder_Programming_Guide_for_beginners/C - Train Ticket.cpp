#include<bits/stdc++.h>
using namespace std;
string a;
void f(int i,string s,int c){
  if(i==4){if(c==7){a=s; return;}}
  else{
    s[2*i-1]='+'; f(i+1,s,c+(s[2*i]-'0'));
    s[2*i-1]='-'; f(i+1,s,c-(s[2*i]-'0'));
  }
}
int main(){
  string in; cin>>in;
  string s="       =7";
  for(int i=0;i<4;i++) s[2*i]=in[i];
  f(1,s,s[0]-'0');
  cout<<a<<endl;
}