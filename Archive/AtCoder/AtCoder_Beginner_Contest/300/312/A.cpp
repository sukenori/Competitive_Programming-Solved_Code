#include<bits/stdc++.h>
using namespace std;
int main(){
  string S; cin>>S;
  cout<<(string("ACE,BDF,CEG,DFA,EGB,FAC,GBD").find(S)!=string::npos?"Yes":"No")<<endl;
}