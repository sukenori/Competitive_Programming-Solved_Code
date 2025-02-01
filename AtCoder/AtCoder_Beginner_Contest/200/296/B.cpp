#include<bits/stdc++.h>
using namespace std;
int main(){
  char S;
  for(int i=8;i>=0;i--)for(int j=0;j<8;j++){
    cin>>S;
    if(S=='*'){cout<<char('a'+j)<<i<<endl; exit(0);}
  }
}