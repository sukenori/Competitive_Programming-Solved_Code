#include<bits/stdc++.h>
using namespace std;
int N;
int A[200001]; string S;
int64_t sM[200001][3],sX[200001][3];
int main(){
  cin>>N; for(int i=1;i<=N;i++)cin>>A[i]; cin>>S;
  for(int i=1;i<=N;i++){
    for(int j=0;j<3;j++){sM[i][j]=sM[i-1][j]; sX[i][j]=sX[i-1][j];}
    if(S[i-1]=='M')sM[i][A[i]]++; if(S[i-1]=='X')sX[i][A[i]]++;
  }
  int64_t a=0; for(int i=1;i<=N;i++)if(S[i-1]=='E'){
    for(int Mj=0;Mj<3;Mj++)for(int Xj=0;Xj<3;Xj++){
      set<int>s{0,1,2,3}; s.erase(Mj); s.erase(A[i]); s.erase(Xj);
      a+=(*s.begin())*sM[i][Mj]*(sX[N][Xj]-sX[i-1][Xj]);
    }
  }
  cout<<a<<endl;
}