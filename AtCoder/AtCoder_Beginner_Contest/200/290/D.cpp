#include<bits/stdc++.h>
using namespace std;
int main(){
  int T; cin>>T; while(T--){
    int64_t N,D,K; cin>>N>>D>>K; K--;
    int64_t d=D%N?lcm(D%N,N)/(D%N):1;
    cout<<K/d+((D%N)*(K%d))%N<<endl;
  }
}