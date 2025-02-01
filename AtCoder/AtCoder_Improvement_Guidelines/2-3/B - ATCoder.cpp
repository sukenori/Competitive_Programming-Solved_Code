#include<iostream>
using namespace std;
int main(){
  string s; cin>>s;
  int a=0,c=0;
  for(char si:s){
    if(string("ACGT").find(si)!=string::npos){
      c++;
      a=max(a,c);
    }
    else c=0;
  }
  cout<<a<<endl;
}