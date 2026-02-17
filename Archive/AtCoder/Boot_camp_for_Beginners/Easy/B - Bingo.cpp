#include<bits/stdc++.h>
using namespace std;
int main(){
  vector<vector<int>> A(3,vector<int>(3));
  for(int i=0;i<3;i++)for(int &Aj:A[i])cin>>Aj;
  int N; cin>>N;
  int bi;
  for(int i=0;i<N;i++){
    cin>>bi;
    for(int j=0;j<3;j++)for(int &Ak:A[j])if(Ak==bi)Ak=0;
  }
  bool f=0;
  int s3=0,s4=0;
  for(int i=0;i<3;i++){
    int s1=0,s2=0;
    for(int j=0;j<3;j++){s1+=A[i][j]; s2+=A[j][i];}
    if(!s1||!s2)f=1;
    s3+=A[i][i]; s4+=A[i][2-i];
  }
  if(!s3||!s4)f=1;
  cout<<(f?"Yes\n":"No\n");
}