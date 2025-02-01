#include<bits/stdc++.h>
using namespace std;
int N;
set<string>s;
int main(){
  cin>>N;
  string S; for(int i=1;i<=N;i++){
    cin>>S; if(!s.count(S))cout<<i<<endl; s.insert(S);
  }
}