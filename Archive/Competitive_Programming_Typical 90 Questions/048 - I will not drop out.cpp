#include<bits/stdc++.h>
using namespace std;
int64_t N,K,p[400000];
int main(){
  cin>>N>>K;
  int64_t A,B; for(int i=0;i<N;i++){
    cin>>A>>B; p[2*i]=B; p[2*i+1]=A-B;
  }
  sort(p,p+2*N,greater<int64_t>());
  int64_t a=0; for(int i=0;i<K;i++)a+=p[i];
  cout<<a<<endl;
}