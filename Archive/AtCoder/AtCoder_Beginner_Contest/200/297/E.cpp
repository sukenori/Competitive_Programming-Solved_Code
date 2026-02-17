#include<bits/stdc++.h>
using namespace std;
int N,K;
int64_t A[10],a[200001];
int main(){
  cin>>N>>K;
  for(int i=0;i<N;i++)cin>>A[i];
  priority_queue<int64_t,vector<int64_t>,greater<int64_t>>q;
  q.push(0);
  for(int i=0;i<=K;i++){int64_t j;
    do{j=q.top(); q.pop();}while(i>0&&j==a[i-1]);
    a[i]=j; for(int k=0;k<N;k++)q.push(j+A[k]);
  }
  cout<<a[K]<<endl;  
}