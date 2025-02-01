#include<bits/stdc++.h>
using namespace std;
int M,D[101],d=0;
int main(){
  cin>>M;
  for(int i=1;i<=M;i++){cin>>D[i]; d+=D[i];}
  d=d/2+1;
  int i; for(i=1;i<=M;i++){
    if(d>D[i])d-=D[i]; else break;
  }
  cout<<i<<' '<<d<<endl;
}