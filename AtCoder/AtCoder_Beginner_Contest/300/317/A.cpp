#include<bits/stdc++.h>
using namespace std;
int main(){
  int N,H,X; cin>>N>>H>>X;
  int P; for(int i=1;i<=N;i++){
    cin>>P;
    if(H+P>=X){cout<<i; exit(0);}
  }
}