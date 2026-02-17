#include <bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N;
  vector<int> A(N); for(int i: views::iota(0,N))cin>>A[i];
  int a=0;
  for(int l: views::iota(0,N))for(int r: views::iota(l,N)){
    bool f=true;
    for(int i: views::iota(l,r+1)){
      if(accumulate(next(A.begin(),l),next(A.begin(),r+1),0)%A[i]==0)f=false;
    }
    if(f)a+=1;
  }
  cout<<a<<endl;
  return 0;
}