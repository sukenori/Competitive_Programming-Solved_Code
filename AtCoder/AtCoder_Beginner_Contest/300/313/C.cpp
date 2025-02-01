#include<bits/stdc++.h>
using namespace std;
int N;
int64_t A[200000];
int main(){
  cin>>N;
  int64_t s=0; for(int i=0;i<N;i++){cin>>A[i]; s+=A[i];}
  int64_t a=s/N,m=s%N;
  sort(A,A+N);
  int64_t d=0; for(int i=0;i<N;i++){
    if(i<N-m)d+=abs(A[i]-a);
    else d+=abs(A[i]-(a+1));
  }
  cout<<d/2<<endl;
}