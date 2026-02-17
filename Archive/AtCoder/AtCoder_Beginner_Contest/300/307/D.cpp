#include<bits/stdc++.h>
using namespace std;
int N;
string S;
deque<string>s;
int main(){
  cin>>N>>S;
  s.push_back(""); for(int i=0;i<N;i++){
    if(S[i]=='(')s.push_back("(");
    else if(S[i]==')'){
      if(s.back()[0]=='(')s.pop_back();
      else s.back()+=')';
    }
    else s.back()+=S[i];
  }
  for(string si:s)cout<<si;
}