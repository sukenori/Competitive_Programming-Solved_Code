#include<bits/stdc++.h>
using namespace std;
int N,X;
int A[200000];
int main(){
  cin>>N>>X;
  set<int>s;
  for(int i=0;i<N;i++){cin>>A[i]; s.insert(A[i]-X);}
  bool f=0; for(int Ai:A)if(s.count(Ai))f=1;
  cout<<(f?"Yes":"No")<<endl;
}