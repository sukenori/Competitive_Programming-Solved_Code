#include<bits/stdc++.h>
using namespace std;
int N,A,B,C;
int main(){
  cin>>N>>A>>B>>C;
  int a=10000;
  for(int i=0;i<=min(N/A,9999);i++)for(int j=0;j<=min(N/B,9999);j++){
      int r=N-A*i-B*j; if(r>=0&&r%C==0)a=min(a,i+j+r/C);
  }
  cout<<a<<endl;
}