#include<bits/stdc++.h>
using namespace std;
int main(){
  int exS=0,S; bool f=1;
  for(int i=0;i<8;i++){
    cin>>S;
    if(!(exS<=S&&100<=S&&S<=675&&S%25==0))f=0;
    exS=S;
  }
  cout<<(f?"Yes":"No")<<endl;
}