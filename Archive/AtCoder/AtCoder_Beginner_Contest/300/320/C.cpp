#include<bits/stdc++.h>
using namespace std;
int M;
string S[3];
int main(){
  cin>>M>>S[0]>>S[1]>>S[2];
  vector<int>n[3][10];
  for(int i=0;i<3;i++)for(int j=0;j<M;j++){
    n[i][S[i][j]-'0'].push_back(j);
    n[i][S[i][j]-'0'].push_back(j+M);
    n[i][S[i][j]-'0'].push_back(j+M+M);
  }
  int a=500; for(int i=0;i<10;i++){
    for(int j=0;j<3;j++)sort(n[j][i].begin(),n[j][i].end());
    for(int n0:n[0][i])
      for(int n1:n[1][i])
        for(int n2:n[2][i])
          if(n0!=n1&&n1!=n2&&n2!=n0)
            a=min(a,max({n0,n1,n2}));
  }
  cout<<(a!=500?a:-1)<<endl;
}