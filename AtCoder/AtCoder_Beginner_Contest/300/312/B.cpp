#include<bits/stdc++.h>
using namespace std;
int N,M;
string S[100];
int main(){
  cin>>N>>M;
  for(int i=0;i<N;i++)cin>>S[i];
  string T[9]={
    "###.?????","###.?????","###.?????","....?????",
    "?????????",
    "?????....","?????.###","?????.###","?????.###"
  };
  for(int i=0;i<=N-9;i++)for(int j=0;j<=M-9;j++){
    bool f=1;
    for(int k=0;k<9;k++)for(int l=0;l<9;l++){
      if(T[k][l]=='#')if(S[i+k][j+l]!='#')f=0;
      if(T[k][l]=='.')if(S[i+k][j+l]!='.')f=0;
    }
    if(f)cout<<i+1<<' '<<j+1<<endl;
  }
}