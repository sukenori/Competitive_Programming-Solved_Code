#include<bits/stdc++.h>
using namespace std;
int N,K,Q;
int A[500001];
int main(){
  cin>>N>>K>>Q;
  multiset<int>s;
  for(int i=0;i<N;i++)s.insert(0);
  auto i=s.end(); i=prev(i,K); int64_t f=0;
  while(Q--){
    int X,Y; cin>>X>>Y;
    if(A[X]>*i)f+=-A[X]+*i; else i--;
    s.erase(s.find(A[X]));
    if(Y>*i)f+=Y-*i; else i++;
    s.insert(Y); A[X]=Y;
    cout<<f<<endl;
  }
}