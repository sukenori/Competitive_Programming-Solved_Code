#include<bits/stdc++.h>
using namespace std;
int N;
int64_t A[3001];
int main(){
  cin>>N;
  for(int i=1;i<=N;i++)cin>>A[i],A[i]+=A[i-1];
  for(int k=1;k<=N;k++){
    int64_t s=0; for(int i=0;i<=N-k;i++)
      s=max(s,A[i+k]-A[i]);
    cout<<s<<endl;
  }
}