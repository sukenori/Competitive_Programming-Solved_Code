#include<bits/stdc++.h>
using namespace std;
int N;
set<pair<int,int>>s;
int main(){
  cin>>N;
  int A,B,C,D; for(int i=0;i<N;i++){
    cin>>A>>B>>C>>D;
    for(int x=A;x<B;x++)for(int y=C;y<D;y++)s.insert({x,y});
  }
  cout<<s.size()<<endl;
}