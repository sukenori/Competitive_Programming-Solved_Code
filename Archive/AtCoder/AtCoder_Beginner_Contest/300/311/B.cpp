#include<bits/stdc++.h>
using namespace std;
int N,D;
string S[100];
int main(){
  cin>>N>>D;
  for(int i=0;i<N;i++)cin>>S[i];
  int a=0,s=0;
  for(int i=0;i<D;i++){
    bool f=1; for(int j=0;j<N;j++)if(S[j][i]!='o')f=0;
    if(f)s+=1; else s=0; a=max(a,s);
  }
  cout<<a<<endl;
}