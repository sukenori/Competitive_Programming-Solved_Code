#include<bits/stdc++.h>
using namespace std;
int N;
int64_t A[100000],B[100000];
int main(){
  cin>>N;
  for(int i=0;i<N;i++)cin>>A[i];
  for(int i=0;i<N;i++)cin>>B[i];
  sort(A,A+N); sort(B,B+N);
  int64_t s=0; for(int i=0;i<N;i++)s+=abs(A[i]-B[i]);
  cout<<s<<endl;
}