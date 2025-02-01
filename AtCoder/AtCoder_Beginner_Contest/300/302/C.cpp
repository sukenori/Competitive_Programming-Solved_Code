#include<bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0;i<n;i++)
int main(){
  int N,M; cin>>N>>M;
  string S[8]; rep(i,N)cin>>S[i];
  int d[8][8]{};
  rep(i,N)rep(j,N)rep(k,M)if(S[i][k]!=S[j][k])d[i][j]++;
  vector<int>p{}; rep(i,N)p.push_back(i);
  int c; bool f=0;
  do{
    c=0; rep(i,N-1)if(d[p[i]][p[i+1]]==1)c++;
    if(c==N-1)f=1;
  }while(next_permutation(p.begin(),p.end()));
  cout<<(f?"Yes":"No")<<endl;
}