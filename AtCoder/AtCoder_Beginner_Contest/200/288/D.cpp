#include<bits/stdc++.h>
using namespace std;
int N,K;
int A[10][200001];
int main(){
  cin>>N>>K;
  for(int i=0;i<N;i++){
    cin>>A[i%K][i/K+1]; A[i%K][i/K+1]+=A[i%K][i/K];
  }
  int Q; cin>>Q; while(Q--){
    int l,r; cin>>l>>r; l--; r--;
    int f=1,s=A[l%K][r/K-(l%K>r%K)+1]-A[l%K][l/K];
    for(int i=l+1;i<l+min(r-l+1,K);i++)
      if(A[i%K][r/K-(i%K>r%K)+1]-A[i%K][i/K]!=s)f=0;
    cout<<(f?"Yes":"No")<<endl;
  }
}