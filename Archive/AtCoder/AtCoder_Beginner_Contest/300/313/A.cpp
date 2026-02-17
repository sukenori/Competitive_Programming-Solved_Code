#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N;
  int m=0,P[N]; for(int i=0;i<N;i++){
    cin>>P[i];
    if(i>0)m=max(m,P[i]);
  }
  cout<<max(m+1-P[0],0)<<endl;
}