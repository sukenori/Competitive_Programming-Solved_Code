#include<bits/stdc++.h>
using namespace std;
int N,Q;
set<int>s[300001];
int main(){
  cin>>N>>Q;
  while(Q--){
    int qu,u,v; cin>>qu;
    if(qu==1){cin>>u>>v;
      N-=!s[u].size()+!s[v].size();
      s[u].insert(v); s[v].insert(u);
    }
    if(qu==2){cin>>u;
      for(int ui:s[u]){
        s[ui].erase(u); if(!s[ui].size())N++;
      }
      if(s[u].size())N++; s[u].clear();
    }
    cout<<N<<endl;
  }
}