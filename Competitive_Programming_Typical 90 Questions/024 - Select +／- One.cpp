#include<bits/stdc++.h>
using namespace std;
int64_t N,K;
int64_t A[1000],B[1000];
int main(){
  cin>>N>>K;
  int64_t a=0;
  for(int i=0;i<N;i++)cin>>A[i];
  for(int i=0;i<N;i++){cin>>B[i]; a+=abs(B[i]-A[i]);}
  cout<<((a<=K&&(K-a)%2==0)?"Yes":"No")<<endl;
}