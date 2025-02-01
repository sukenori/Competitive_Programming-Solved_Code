#include<bits/stdc++.h>
using namespace std;
int N,Q,T,x,y;
deque<int>A;
int main(){
  cin>>N>>Q;
  int Ai; for(int i=0;i<N;i++){cin>>Ai; A.push_back(Ai);}
  while(Q--){
    cin>>T>>x>>y; int s;
    if(T==1){x--; y--; s=A[x]; A[x]=A[y]; A[y]=s;}
    if(T==2){s=A.back(); A.pop_back(); A.push_front(s);}
    if(T==3){x--; cout<<A[x]<<endl;}
  }
}