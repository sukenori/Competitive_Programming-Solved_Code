#include<bits/stdc++.h>
using namespace std;
int N,Q;
set<int>a;
int main(){
  cin>>N>>Q;
  int c=1; int q,x; while(Q--){cin>>q;
    if(q==1)a.insert(c++);
    if(q==2){cin>>x; a.erase(x);}
    if(q==3)cout<<*a.begin()<<endl;
  }
}