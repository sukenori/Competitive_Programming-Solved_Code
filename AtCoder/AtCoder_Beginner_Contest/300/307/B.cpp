#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N;
  string S[101];
  for(int i=1;i<=N;i++)cin>>S[i];
  bool f=0;
  for(int i=1;i<=N;i++)for(int j=1;j<=N;j++){
    if(i!=j){string s=S[i]+S[j];
      bool c=1; for(int k=0;k<=s.size()/2-1;k++)
        c&=(s[k]==s[s.size()-1-k]);
      if(c)f=1;
    }
  }
  cout<<(f?"Yes":"No")<<endl;
}