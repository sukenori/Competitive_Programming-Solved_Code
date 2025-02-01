#include<bits/stdc++.h>
using namespace std;
int Q;
deque<int>q;
int main(){
  cin>>Q; while(Q--){
    int t,x; cin>>t>>x;
    if(t==1)q.push_front(x);
    if(t==2)q.push_back(x);
    if(t==3)cout<<q[x-1]<<endl;
  }
}