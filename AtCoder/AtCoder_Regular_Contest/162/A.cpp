#include<bits/stdc++.h>
using namespace std;
int T,N,P;
int main(){
  cin>>T; while(T--){
    cin>>N; int s=0;
    for(int i=1;i<=N;i++){
      cin>>P;
      if(P>i)s++;
    }
    cout<<(s==0?N:s)<<endl;
  }
}