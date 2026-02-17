#include<bits/stdc++.h>
using namespace std;
int gcd(int a,int b){
  if(a%b==0)return b;
  else return gcd(b,a%b);
}
int main(){
  int N,M; cin>>N>>M;
  int l; cin>>l; bool f=0;
  for(int i=1;i<N;i++){
    int ai; cin>>ai;
    l=(int64_t)ai*l/gcd(ai,l);
    if(l/ai%2==0)f=1;
  }
  cout<<(f?0:M/l+(2*M/l)%2)<<endl;
}