#include<bits/stdc++.h>
using namespace std;
int main(){
  int64_t A,B,AA=1,BB=1;
  cin>>A>>B;
  for(int i=0;i<B;i++)AA*=A;
  for(int i=0;i<A;i++)BB*=B;
  cout<<AA+BB<<endl;
}