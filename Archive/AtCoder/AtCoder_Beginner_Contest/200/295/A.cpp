#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N;
  bool f=0; for(int i=0;i<N;i++){
    string W; cin>>W;
    if(set<string>{"and","not","that","the","you"}.count(W))f=1;
  }
  cout<<(f?"Yes":"No")<<endl;
}