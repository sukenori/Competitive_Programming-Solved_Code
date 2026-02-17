#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N;
  vector<int> P(N),Q(N),p(N);
  for(int i=0; i<N; i++) cin>>P[i];
  for(int i=0; i<N; i++) cin>>Q[i];
  for(int i=0; i<N; i++) p[i]=i+1;
  int c=0,cp=0,cq=0;
  do{
    if(p==P) cp=c;
    if(p==Q) cq=c;
    c++;
  } while(next_permutation(p.begin(),p.end()));
  cout<<abs(cp-cq)<<endl;
}