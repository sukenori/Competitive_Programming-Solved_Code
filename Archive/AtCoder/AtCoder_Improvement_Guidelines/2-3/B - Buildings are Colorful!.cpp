#include<iostream>
#include<vector>
#include<cmath>
using namespace std;
int main(){
  int N,K; cin>>N>>K;
  vector<int> a(N); for(int i=0; i<N; i++) cin>>a[i];
  int64_t mp=pow(10,9)*15;
  for(int i=0; i<1<<(N-1); i++){
    int c=1,m=a[0]; int64_t p=0;
    for(int j=1; j<N; j++){
      if(i>>(j-1)&1){
        c++;
        m=max(m+1,a[j]);
        p+=max(m-a[j],0);
      }
      m=max(m,a[j]);      
    }
    if(c==K) mp=min(mp,p);
  }
  cout<<mp<<endl;
}