#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N; int k=100,a;
  for(int i=0;i<=100;i+=5)
  if(k>abs(N-i)){k=abs(N-i);a=i;}
  cout<<a<<endl;
}