#include<bits/stdc++.h>
using namespace std;
int N;
vector<int>G[200001];
int d[200001];
int main(){
  cin>>N;
  int C; for(int i=1;i<=N;i++){cin>>C; int P;
    for(int j=0;j<C;j++){cin>>P; G[i].push_back(P);}
  }
  vector<int>a;
  function<void(int)>dfs=[&](int i){
    for(int j:G[i])if(!d[j])dfs(j);
    d[i]=1; if(i>1)cout<<i<<' ';
  };
  dfs(1);
}