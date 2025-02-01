#include<bits/stdc++.h>
using namespace std;
int N;
map<string,string>n;
int main(){
  cin>>N;
  bool f=1;
  string S,T; for(int i=0;i<N;i++){
    cin>>S>>T;
    while(n.count(T))T=n[T];
    if(S==T)f=0; else n[S]=T;
  }
  cout<<(f?"Yes":"No")<<endl;
}