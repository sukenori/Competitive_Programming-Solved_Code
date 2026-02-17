#include<bits/stdc++.h>
using namespace std;
string S;
int64_t N;
int main(){
  cin>>S>>N; int n=S.size(); reverse(S.begin(),S.end());
  int64_t a=0; for(int i=0;i<n;i++)if(S[i]=='1')a|=1ll<<i;
  if(a>N)a=-1;
  else for(int i=n-1;i>=0;i--)if(S[i]=='?'&&(a|1ll<<i)<=N)a|=1ll<<i;
  cout<<a<<endl;
}