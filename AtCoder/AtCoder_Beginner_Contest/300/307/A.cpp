#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N; int A,s;
  for(int i=0;i<N;i++){
    s=0;
    for(int j=0;j<7;j++){
      cin>>A; s+=A;
    }
    cout<<s<<' ';
  }
}