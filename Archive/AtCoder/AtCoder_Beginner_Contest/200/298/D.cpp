#include<bits/stdc++.h>
#include<atcoder/all>
using namespace atcoder;
using namespace std;
using mint=modint998244353;
int main(){
  deque<int>S{1};
  mint s=1;
  int Q; cin>>Q; while(Q--){
    int q; cin>>q;
    if(q==1){
      int x; cin>>x;
      s=s*10+x; S.push_back(x);
    }
    if(q==2){
      s-=S.front()*mint(10).pow(S.size()-1);
      S.pop_front();
    }
    if(q==3)cout<<s.val()<<endl;
  }
}