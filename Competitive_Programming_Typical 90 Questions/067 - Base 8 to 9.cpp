#include<bits/stdc++.h>
using namespace std;
string N;
int K;
int main(){
  cin>>N>>K;
  while(K--){
    int64_t n=0,m=1; for(int i=(int)N.size()-1;i>=0;i--){
      n+=(N[i]-'0')*m; m*=8;
    }
    if(n==0)N="0";
    else{N=""; m=9; while(n>0){N=char(n%m+'0')+N; n/=9;}
    }
    for(int i=0;i<(int)N.size();i++)if(N[i]=='8')N[i]='5';
  }
  cout<<N<<endl;
}