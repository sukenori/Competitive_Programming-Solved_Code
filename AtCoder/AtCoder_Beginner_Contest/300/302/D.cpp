#include<bits/stdc++.h>
using namespace std;
int N,M;
int64_t D,A[200000];
int main(){
  cin>>N>>M>>D;
  for(int i=0;i<N;i++)cin>>A[i];
  sort(A,A+N);
  priority_queue<int64_t>q; q.push(-1);
  for(int i=0;i<M;i++){int64_t Bi; cin>>Bi;
    auto Ait=upper_bound(A,A+N,Bi+D); if(Ait==A)continue;
    int64_t Ai=*(Ait-1); if(abs(Ai-Bi)<=D)q.push(Ai+Bi);
  }
  cout<<q.top()<<endl;
}