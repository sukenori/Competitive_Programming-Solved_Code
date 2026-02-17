#include<bits/stdc++.h>
using namespace std;
int main(){
  string S,a; cin>>S;
  for(int i=0;i<S.size();i++){
    if(S[i]=='a'||S[i]=='e'||S[i]=='i'||S[i]=='o'||S[i]=='u')continue;
    a+=S[i];
  }
  cout<<a<<endl;
}