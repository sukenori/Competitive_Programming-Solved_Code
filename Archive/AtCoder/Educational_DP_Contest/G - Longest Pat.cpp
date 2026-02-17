#include<bits/stdc++.h>
using namespace std;
int N,M;
vector<int>G[100001];
int m[100001];
int p(int i){
  if(m[i]==-1){
    int mi=0; for(int Gj:G[i])mi=max(mi,p(Gj)+1);
    return m[i]=mi;
  }
  else return m[i];
}
int main(){
  cin>>N>>M;
  int x,y; while(M--){
    cin>>x>>y; G[x].push_back(y);
  }
  fill(m,m+100001,-1);
  int a=0; for(int i=1;i<=N;i++)a=max(a,p(i));
  cout<<a<<endl;
}