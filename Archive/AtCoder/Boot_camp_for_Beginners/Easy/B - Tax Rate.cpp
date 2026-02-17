#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N;
  int X=N/1.08;
  bool f=0;
  while(X*1.08<N+1){
    if((int)(X*1.08)==N){f=1; break;}
    else X++;
  }
  if(f)cout<<X; else cout<<":(";
  cout<<endl;
}