#include<bits/stdc++.h>
using namespace std;
int N,P[3][100001];
int main(){
  cin>>N;
  int Ci,Pi; for(int i=1;i<=N;i++){
    cin>>Ci>>Pi; P[Ci][i]=Pi;
    P[1][i]+=P[1][i-1]; P[2][i]+=P[2][i-1];
  }
  int Q; cin>>Q; while(Q--){
    int L,R; cin>>L>>R;
    cout<<P[1][R]-P[1][L-1]<<' '<<P[2][R]-P[2][L-1]<<endl;
  }
}