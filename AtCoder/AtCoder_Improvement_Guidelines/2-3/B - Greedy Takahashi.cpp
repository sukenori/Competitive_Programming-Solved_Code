#include<bits/stdc++.h>
using namespace std;
long long A,B,K;
int main(){
  cin>>A>>B>>K;
  cout<<max(A-K,0LL)<<' '<<max(B-max(K-A,0LL),0LL)<<endl;
}