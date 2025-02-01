#include<bits/stdc++.h>
#include<atcoder/all>
using namespace atcoder;
using namespace std;
using mint=modint998244353;
int N;
string S;
mint a=0;
int main(){
  cin>>N>>S;
  for(int i=N-2;i>=0;i--){
    if(S[i+1]=='1')a++;
    else if(S[i]=='1')a+=(mint (S[i+1]-'1')).pow(a);
    else{cout<<-1<<endl; exit(0);}
  }
  cout<<a.val()<<endl;
}