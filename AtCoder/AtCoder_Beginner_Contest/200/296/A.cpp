#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; string S; cin>>N>>S;
  bool f=1; for(int i=0;i<N-1;i++)if(S[i]==S[i+1])f=0;
  cout<<(f?"Yes":"No")<<endl;
}